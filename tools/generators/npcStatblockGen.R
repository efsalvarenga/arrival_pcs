# ---
# title: "NPC Statblock Generator"
# date: "2023-11-08"
# ---

# libraries
library(dplyr)
library(yaml)
library(EnvStats)

# attribute table input
statblock <- expand.grid(brawl = -3:11,
                         wit = -3:11,
                         will = -3:11) %>%
  mutate(highdiff = pmax(abs(brawl - wit),
                         abs(wit - will),
                         abs(will - brawl)),
         hasneg = (brawl < 0 | wit < 0 | will < 0)) %>%
  filter(highdiff <= 8,
         highdiff <= 5 | !hasneg) %>%
  select(-highdiff, -hasneg)

# calculated stats
statblock <- statblock %>%
  mutate(
    level = pmax(brawl + wit + will - 1, 0),
    ac = 11 + pmax(brawl, wit),
    expHpPerDie = case_when(
      level == 0 ~ 2.5,
      TRUE ~ 4 + brawl / 2
    ),
    hp = round(pmax(1, expHpPerDie * level)),
    hit_die = case_when(
      expHpPerDie <= 3 ~ 'd4',
      expHpPerDie <= 4 ~ 'd6',
      expHpPerDie <= 5 ~ 'd8',
      expHpPerDie <= 6 ~ 'd10',
      expHpPerDie <= 8 ~ 'd12',
      TRUE ~ 'd20'
    ),
    hd = paste0(pmax(level, 1), hit_die),
    atkModBrawl = 1 + 2 * brawl,
    atkModWit = 1 + 2 * wit,
    atkModWill = 1 + 2 * will,
    atks = round(sqrt(pmax(1, wit))),
    atkDmgBrawlValue = round(pmax(2.5, brawl * 3.5)),
    atkDmgBrawlRoll = paste0(
      pmax(1, brawl), 'd',(pmax(2.5, brawl * 3.5) / pmax(1, brawl) - 0.5) * 2
    ),
    atkDmgWillValue = round(pmax(2.5, will * 3.5)),
    atkDmgWillRoll = paste0(
      pmax(1, will), 'd',(pmax(2.5, will * 3.5) / pmax(1, will) - 0.5) * 2
    ),
    move = 25 + 5 * wit,
    effort = case_when(
      will <= 1 ~ '1',
      will <= 6 ~ paste0('d', will * 2),
      will == 7 ~ 'd12',
      TRUE ~ 'd20'
    ),
    save = 16 - round(level / 5)
  ) 


# import data
dataLst <- read_yaml('arrival/npcs/_generators/lists01.md')

# define list type based on header information
npc <- lapply(names(dataLst), function (entry) {
  # sample entry on a sub list
  txts <- sample(dataLst[[entry]], 1)
  
  # if sub list contains more details, retrieve those
  if (is.list(txts)) {
    
    # correct for case of entry without detail in sub list where other
    # entries had details
    if (is.null(names(txts[[1]]))) {
      result <- paste0('- **', entry, '**: ', txts[[1]][[1]], '\n')
    } else {
      
      # retrieve sub list entry details
      result1 <- paste0('- **', entry, '**: ', names(txts[[1]]), '\n    - ')
      result2 <- paste0(txts[[1]][[1]], collapse = '\n    - ')
      result <- paste0(result1, result2, '\n') 
    }
    
    # retrieve sub list with simple entries
  } else {
    result <- paste0('- **', entry, '**: ', txts, '\n')
  }
  
  # define returned entry
  return (result)
}) 

# print for md
cat('', paste0(unlist(npc)))
