# ---
# title: "3d6 resolution"
# date: "2024-02-17"
# ---

# The below is a suggestion of unified mechanics based on **BLB** combat resolution, expanded to all actions in the game.
# 
# 1. **Player** describes the action and agrees with the GM what **Skill** is relevant for the roll.
# 2. **GM** defines the **DC** and the **Level** of the challenge
# 1. **GM** might roll a challenge die from d2 (normal) to d12 (impossible) and add to 7 to determine the **DC**.
# 2. **Level** of challenge varies from 1 (simple), 4 (complex) to 8 (daunting)
# 3. **Player** roll 3d6.
# 4. **Player** choose any combination of 2 dice + skill at use that beats the **DC**.
# 5. Remainder die is the **Effect**, that gets applied to the challenge **Level** of challenge.
# 1. If the **Effect** die is a 6, **Player** might roll an additional 1d6 for increased **Effect**.
# 6. If the challenge Level is overcome, the challenge is overcome.
# 7. **Players** can choose more than one action to subdue a challenge, but every attempt until final success should have a cost or consequence.
# 
# In **Combat** situations, **Armour** defines the **DC**. Effect is deducted from NPCs' Vigour. And NPCs would have their own rounds, attacking back against PCs - i.e. GM rolls dice for NPCs in combat. In other skill applications, the Player rolling dice is sufficient to adjudicate consequences to both PCs 

# libraries
library(dplyr)
library(ggplot2)

# DC rolls function
create_dice_df <- function(
    dice_types = c("-1", "0", "1", "d02", "d03", "d04", "d06", "d08", "d10", "d12")
) {
  # Initialize an empty data frame
  dice_df <- data.frame(dc_dice = character(), dc_roll = integer())
  
  for (dice in dice_types) {
    # Handle special cases where dice is not in 'dx' format
    if (!grepl("d", dice)) {
      dice_df <- rbind(dice_df, data.frame(dc_dice = dice, dc_roll = as.integer(dice)))
    } else {
      # Extract the number of sides from the dice type
      num_sides <- as.integer(sub("d", "", dice))
      rolls <- 1:num_sides
      # Create a temporary data frame for the current dice type and all possible rolls
      temp_df <- data.frame(dc_dice = rep(dice, length(rolls)), dc_roll = rolls)
      dice_df <- rbind(dice_df, temp_df)
    }
  }
  
  return(dice_df)
}

# Function to be used within a dplyr chain for evaluating dice combinations
choose_min_combination <- function(df) {
  df %>%
    rowwise() %>%
    mutate(result = {
      # Combinations of two columns
      combinations <- combn(c_across(c(d1, d2, d3)), 2, sum)
      # Find combinations that are equal to or greater than dc_net
      valid_combinations <- combinations[combinations >= dc_net]
      
      # If no valid combination, return -10
      if(length(valid_combinations) == 0) -1 else min(valid_combinations)
    }) %>%
    ungroup() # Ensure the result is not grouped, for further manipulations
}

# All possible 3d6 rolls
roll3d6 <- expand.grid(
  d1 = 1:6,
  d2 = 1:6,
  d3 = 1:6
)

# Merge rolls, mods, dc_rolls and evaluate effect
effectSim <- merge(
  x = data.frame(mod = -1:4),
  y = create_dice_df()
) %>% merge(
  y = roll3d6
) %>%
  mutate(
    dc = dc_roll + 7,
    dc_net = dc - mod
  ) %>%
  choose_min_combination() %>%
  mutate(effect = ifelse(result < 0, -1, d1 + d2 + d3 - result))

consolidated_effect <- effectSim %>%
  group_by(mod, dc_dice, effect) %>%
  summarise(cases = n()) %>%
  mutate(probs = round(cases / sum(cases), 2))

consolidated_effect %>%
  # filter(!(dc_dice %in% c('-1', '0', '1'))) %>%
  ggplot(aes(x = effect, y = probs, fill = factor(mod))) +
  geom_bar(stat = 'identity', position = 'dodge') +
  facet_wrap(~dc_dice)

consolidated_effect %>%
  mutate(outcome = case_when(effect <= 0 ~ 'F',
                             effect <= 3 ~ 'S-',
                             TRUE ~ 'S+')) %>%
  ggplot(aes(x = outcome, y = probs, fill = factor(mod))) +
  geom_bar(stat = 'identity', position = 'dodge') +
  facet_wrap(~dc_dice)

consolidated_effect %>%
  filter(mod == 0,
         dc_dice == 'd02') %>%
  mutate(cum = cumsum(probs))
