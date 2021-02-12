# Today we will compare the performance of the Democratic and Republican 
# candidates in the 2016 and 2020 elections, using state-level election data.
# 
# | Name                | Description                                               |
# |---------------------|-----------------------------------------------------------|
# | `state`             | Name of the state                                         |
# | `state_po`          | State abbreviation                                        |
# | `votes_2016_d`      | Number of votes for Clinton in the general election, 2016 |
# | `votes_2016_r`      | Number of votes for Trump in the general election, 2016   |
# | `votes_2020_d`      | Number of votes for Biden in the general election, 2020   |
# | `votes_2020_r`      | Number of votes for Trump in the general election, 2020   |

# The data is in a file named `pres_elec_data.csv`

# Question 1 --------------------------------------------------------------

# Save the data to a folder called "data". This folder must be in the same
# directory as your Rscript and working directory.
# The path to the data MUST be "data/pres_elec_data.csv"
# Load the data and save it to an object called `elec`.
library(tidyverse)
setwd("/Users/ronuniqueclark/Desktop/PO399datascience")
elec <- read.csv("data/pres_elec_data.csv")
#view(pres_elec_data)
#elec <- pres_elec_data
# Question 2 --------------------------------------------------------------

# Add two new variables to `elec`:
# 1. `dem_pct_2016` equal to the two party-vote share of the Dem. candidate in 2016
#     dem_pct_2016 = votes_2016_d/(votes_2016_d + votes_2016_r)
# 2. `dem_pct_2020` equal to the two party-vote share of the Dem. candidate in 2020

votes_2016_d <- select(elec, votes_2016_d) #this is all dem votes 2016
votes_2016_r <- select(elec, votes_2016_r) #this is all rep votes 2016
elec <- elec %>%
  mutate(dem_pct_2016 = votes_2016_d/(votes_2016_d + votes_2016_r))
dem_pct_2016 <- select(elec, dem_pct_2016)
#elec$dem_pct_2016 <- dem_pct_2016
votes_2020_d <- select(elec, votes_2020_d)
votes_2020_r <- select(elec, votes_2020_r)
elec <- elec %>%
  mutate(dem_pct_2020 = votes_2020_d/(votes_2020_d + votes_2020_r))
dem_pct_2020 <- select(elec, dem_pct_2020)
#elec$dem_pct_2020 <- dem_pct_2020
# Question 3 --------------------------------------------------------------

# Calculate the difference between the Democratic vote share in 2020 and in 2016,
# and save this to variable in elec called `dem_change`
# (calculate this as dem_pct_2020-dem_pct_2016)

elec <- elec %>%
  mutate(dem_change = dem_pct_2020 - dem_pct_2016)
#elec$dem_change = dem_pct_2020 - dem_pct_2020
dem_change <- select(elec, dem_change)



# Question 4 --------------------------------------------------------------

# Which state moved the most toward the Democratic candidate in 2020? Which
# moved the most toward the Republican candidate? (not autograded)

elec <- elec %>%
  mutate(rep_pct_2016 = votes_2016_r/(votes_2016_r + votes_2016_d))
rep_pct_2016 <- select(elec, rep_pct_2016)
elec <- elec %>%
  mutate(rep_pct_2020 = votes_2020_r/(votes_2020_d + votes_2020_r))
rep_pct_2020 <- select(elec, rep_pct_2020)
elec <- elec %>%
  mutate(rep_change = rep_pct_2020 - rep_pct_2016)
rep_change <- select(elec, rep_change)

dem_move_2020 <- select(elec,state,dem_change)%>%
  arrange(desc(dem_change))
dem_move_2020[1,] #the state with the most dem gain  is Colorado

rep_move_2020 <- select(elec,state,rep_change)%>%
  arrange(desc(rep_change))
rep_move_2020[1,] #the state with the most rep gain is Hawaii


# Question 5 --------------------------------------------------------------

# This question is not autograded

# Make a plot showing the 2016 Democratic vote share on the x-axis, the
# 2020 Democratic vote share on the y-axis, and each state as a point or text
# label. Experiment with ggplot and use the help functions to make your plot
# look nice.
library(ggplot2)
ggplot() + 
  geom_point(data=elec, 
             mapping=aes(x=votes_2016_d, y=votes_2020_d,
                         color=state_po)) 


# What do you observe on this graph?





