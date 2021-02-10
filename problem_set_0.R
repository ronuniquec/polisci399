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
# getwd()
setwd("/Users/ronuniqueclark/Desktop/data/")
getwd()
data <- read.csv("pres_elec_data.csv")
view(data)
elec <- read.csv("pres_elec_data.csv")
view(elec)
# Question 2 --------------------------------------------------------------

# Add two new variables to `elec`:
# 1. `dem_pct_2016` equal to the two party-vote share of the Dem. candidate in 2016
#     dem_pct_2016 = votes_2016_d/(votes_2016_d + votes_2016_r)
# 2. `dem_pct_2020` equal to the two party-vote share of the Dem. candidate in 2020

dem_pct_2016_d <- select(elec,votes_2016_d)
votes_2016_d <- sum(dem_pct_2016_d)
dem_pct_2016_r <- select(elec,votes_2016_r)
votes_2016_r <- sum(dem_pct_2016_r)
dem_pct_2016 <- votes_2016_d/(votes_2016_d + votes_2016_r)
dem_pct_2016

dem_pct_2020_d <- select(elec,votes_2020_d)
votes_2020_d <- sum(dem_pct_2020_d)
dem_pct_2020_r <- select(elec,votes_2020_r)
votes_2020_r <- sum(dem_pct_2020_r)
dem_pct_2020 <- votes_2020_d/(votes_2020_d + votes_2020_r)
dem_pct_2020

# Question 3 --------------------------------------------------------------

# Calculate the difference between the Democratic vote share in 2020 and in 2016,
# and save this to variable in elec called `dem_change`
# (calculate this as dem_pct_2020-dem_pct_2016)

dem_change <- dem_pct_2020-dem_pct_2016
dem_change



# Question 4 --------------------------------------------------------------

# Which state moved the most toward the Democratic candidate in 2020? Which
# moved the most toward the Republican candidate? (not autograded)

elec <- mutate(elec, dem_gain=votes_2020_d-votes_2016_d, rep_gain=votes_2020_r-votes_2016_r)

dem_move_2020 <- select(elec,state_po,dem_gain)%>%
  arrange(desc(dem_gain))
dem_move_2020[1,]

rep_move_2020 <- select(elec,state_po,rep_gain)%>%
  arrange(desc(rep_gain))
rep_move_2020[1,]
# Question 5 --------------------------------------------------------------

# This question is not autograded

# Make a plot showing the 2016 Demogratic vote share on the x-axis, the
# 2020 Democratic vote share on the y-axis, and each state as a point or text
# label. Experiment with ggplot and use the help functions to make your plot
# look nice.

library(ggplot2)
graph <- ggplot() + 
  geom_point(data = elec,aes(x=votes_2016_d,y=votes_2020_d), color="blue")
graph
# What do you observe on this graph?
# What I observed on this graph is that the 2020 and 2016 Democratic vote results
# are closely related. However, there is one outlier.





