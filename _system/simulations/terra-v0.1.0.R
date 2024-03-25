# ---
# title: "Terra Trophy Simulation"
# date: "2024-03-24"
# ---

# -------------------------------------------------------------------------
# Libraries
# -------------------------------------------------------------------------

library(dplyr)
library(gam)

# -------------------------------------------------------------------------
# Declare functions
# -------------------------------------------------------------------------

pc_dice_pool <- function(x) {
  # Check if x is 0, then roll two dice and keep only the lowest value
  if(x == 0) {
    dice_rolls <- sample(1:6, size = 2, replace = TRUE)
    
    # Return the lowest value twice since only the lowest value is kept
    dice_rolls <- min(dice_rolls)
    
  } else {
    # Roll x number of 6-sided dice
    dice_rolls <- sample(1:6, size = x, replace = TRUE)
  }
  
  # Sort the dice rolls in descending order to easily pick the top two
  sorted_rolls <- sort(dice_rolls, decreasing = TRUE)
  
  # Ensure there's at least two elements to avoid out-of-bounds errors
  if (length(sorted_rolls) < 2) {
    # Default the second highest to 1 if only one roll
    sorted_rolls <- c(sorted_rolls, 1)
  } else if (sorted_rolls[1] > 3 & sorted_rolls[2] > 3) {
    # Shuffle the highest and the second highest values before returning
    # if both are enough for a success
    sorted_rolls <- sample(sorted_rolls[1:2])
  } else {
    sorted_rolls <- sorted_rolls[1:2]
  }
  
  # explode effect die
  total_roll = sorted_rolls[2]
  current_roll = sorted_rolls[2] # To check initialisation of explosion
  while(current_roll == 6) {
    current_roll = sample(1:6, size = 1, replace = TRUE) # Roll a 6-sided die
    total_roll = total_roll + current_roll # Add the roll to the total
  }
  sorted_rolls[2] <- total_roll
  
  # Return the highest and the second highest values
  return(sorted_rolls)
}

ch_dice_pool <- function(y) {
  # Check if y is 0, then roll two dice but only keep the lowest value
  if(y == 0) {
    dice_rolls <- sample(1:6, size = 2, replace = TRUE)
    # Keep the lowest value
    highest_roll <- min(dice_rolls)
  } else {
    # Roll y number of 6-sided dice
    dice_rolls <- sample(1:6, size = y, replace = TRUE)
    # Find the highest value
    highest_roll <- max(dice_rolls)
  }
  
  # Apply exploding effect if the highest roll is a 6
  total_roll = highest_roll
  while(highest_roll == 6) {
    current_roll = sample(1:6, size = 1, replace = TRUE) # Roll a 6-sided die
    total_roll = total_roll + current_roll # Add the roll to the total
    
    # Update highest roll to check for further explosions
    highest_roll = current_roll
  }
  
  # Return the highest (potentially exploding) value
  return(total_roll)
}

# Wrapper function to run roll_dice_max_two j times and return a data frame
run_and_compile <- function(x, y, j) {
  # Run the function j times
  results_pc <- replicate(j, pc_dice_pool(x), simplify = FALSE)
  results_ch <- replicate(j, ch_dice_pool(y), simplify = FALSE)
  
  # Convert the lists of vectors to a data frame
  results_pc_df <- do.call(rbind, results_pc) %>% 
    as.data.frame() %>%
    setNames(c("Success", "Effect")) # Set column names
  
  results_ch_df <- do.call(rbind, results_ch) %>% 
    as.data.frame() %>%
    setNames("Retribution") # Set column name
  
  # Compile df
  results_df <- cbind(results_pc_df, results_ch_df)
  return(results_df)
}

run_and_summarise <- function(x, y, j) {
  roll_sim <- run_and_compile(x, y, j) %>%
    mutate(ch_loss = ifelse(Success > 3, Effect, 0),
           pc_loss = ifelse(Success < 6, Retribution, 0)) %>%
    summarise(ch_loss_E = round(mean(ch_loss), 1),
              pc_loss_E = round(mean(pc_loss), 1))
  
  return(roll_sim)
}

library(dplyr)

run_and_compile_summaries <- function(x_range, y_range, j) {
  results <- data.frame()
  
  for (x in x_range) {
    for (y in y_range) {
      # Call run_and_summarise for each combination of x and y
      summary <- run_and_summarise(x, y, j)
      
      # Add x and y values to the summary for reference
      summary$pc_xd <- x
      summary$ch_xd <- y
      
      # Bind the results to the main results dataframe
      results <- rbind(results, summary)
    }
  }
  
  return(results)
}

run_and_compile_extended <- function(x_range, y_range, j) {
  # Initialize an empty dataframe to store results
  all_results <- data.frame()
  
  # Iterate over every value in the x_range
  for (x in x_range) {
    # Iterate over every value in the y_range
    for (y in y_range) {
      # Run the simulation with the current x, y, and j values
      current_results <- run_and_compile(x, y, j)
      
      # Add columns for the current x and y values to the results
      current_results$pc_xd <- x
      current_results$ch_xd <- y
      
      # Append the current_results to the all_results dataframe
      all_results <- rbind(all_results, current_results)
    }
  }
  
  return(all_results)
}

# -------------------------------------------------------------------------
# Analyses
# -------------------------------------------------------------------------

# Analysis on summaries
sim_analysis <- run_and_compile_summaries(2:4, 0:2, 10000)

sim_analysis_exp <- sim_analysis %>%
  mutate(delta_loss = ch_loss_E - pc_loss_E,
         delta_xd = pc_xd - ch_xd)

sim_analysis_exp %>%
  ggplot(aes(x = delta_xd, y = delta_loss)) +
  geom_point() +
  stat_smooth(method=lm)

sim_lm <- lm(delta_loss ~ delta_xd, data = sim_analysis_exp)

# This points that a delta_xd of 
as.numeric(-sim_lm$coefficients[1] / sim_lm$coefficients[2])
# guarantees an equal result between PCs and challenges.
# Given most skilled challenges are 1d, the target dice pool for a skilled PC
# is 2.14d

# Analysis on detailed simmulation
sim_analysis <- run_and_compile_extended(1:5, 0:3, 10000)

sim_analysis_exp <- sim_analysis %>%
  mutate(ch_loss = ifelse(Success > 3, Effect, 0),
         pc_loss = ifelse(Success < 6, Retribution, 0),
         delta_loss = ch_loss - pc_loss,
         delta_xd = pc_xd - ch_xd)

sim_analysis_exp %>%
  ggplot(aes(x = delta_xd, y = delta_loss)) +
  geom_point() +
  stat_smooth(method=gam)

sim_lm <- lm(delta_loss ~ delta_xd, data = sim_analysis_exp)

# This points that a delta_xd of 
as.numeric(-sim_lm$coefficients[1] / sim_lm$coefficients[2])
# guarantees an equal result between PCs and challenges.
# Given most skilled challenges are 1d, the target dice pool for a skilled PC
# with a suitable tool / weapon is 2.17d
# This result is similar to the result above.