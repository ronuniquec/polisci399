
# Problem Set 1 -----------------------------------------------------------

# Make sure to set the working directory in R to the same directory as this file.
# The data should be located within a folder called "data" in this directory.

# Load the `tidyverse` package.


# Question 1 --------------------------------------------------------------
# Load the `house.csv` dataset and save it to an object named `house`. (1 point)



# Question 2 --------------------------------------------------------------
# Create a new variable, called `dem_pct`, which reflects the Democratic vote 
# percentage, defined as `100 * vote_D/(vote_D + vote_R)`.



# Question 3 --------------------------------------------------------------
# Calculate the overall mean of `dem_pct` and save the value to an object
# named `dem_pct_mean`.



# Question 4 --------------------------------------------------------------
# Calculate the mean of `dem_pct` for elections in which a Democratic incumbent
# is running and save the value to an object named`dem_pct_dinc`.



# Question 5 --------------------------------------------------------------
# Calculate the mean of `dem_pct` for elections in which a Republican incumbent
# is running and save the value to an object named`dem_pct_rinc`.



# Question 6 --------------------------------------------------------------
# Calculate the mean of `dem_pct` for elections in which NEITHER party has an 
# incumbent running and save the value to an object named`dem_pct_open`.



# Question 7 --------------------------------------------------------------
# (not autograded)
# Compare these three quantities. What do they suggest about how incumbents 
# perform in elections? Write a few sentences summarizing these results in your
# write-up file.



# Question 8 --------------------------------------------------------------
# 8(a)
# Calculate the difference between the mean Democratic vote share in elections 
# with a Democratic incumbent and the mean Democratic vote share in open-seat 
# races (i.e., races where neither party has an incumbent running). Save the
# value to an object named `dem_pct_diff`.



# 8(b) (not autograded)
# Do you think that this quantity is "causal"? That is to say, does the 
# difference between these two quantities reflect the causal effect of having
# a Democratic incumbent as opposed to having no incumbent on the Democratic 
# vote percentage? Why or why not? (Answer this part in the write-up file.)



# Question 9 --------------------------------------------------------------
# (not autograded)
# Plot a histogram of the Democratic vote share for open-seat races, 
# and for races with a Democratic incumbent, respectively.
# Save your plots as image files, and include them in your write-up file.
# Hint: The ``ggsave()` function is useful for saving ggplots to PNG or PDF.`
# In your write-up, comment on some of the differences between the two plots.

# The code below may be helpful:
#  hist(my_data$my_variable, breaks=20, main="PLOT TITLE", xlab="X-AXIS TITLE")
#
# or, to use `ggplot`:
#  ggplot(my_data, aes(x=my_variable)) +
#    geom_histogram(bins=20) + 
#    labs(title="PLOT TITLE", "X-AXIS TITLE")


# Question 10 -------------------------------------------------------------
# (not autograded)
# In one of the histograms, there appears to be some "lumping" at the end of 
# the plot. What are these races? Why doesn’t the other histogram seem to have
# this same lumping?



# Question 11 -------------------------------------------------------------
# 11(a)
# Use the `group_by` and `summarize` functions to compute the average 
# Democratic vote share by year, for all election years. Save the results to
# on object called dem_pct_year, with columns `year` and `dem_pct_mean`.
# Note: in `summarize`, you can name the variables that are calculated. For
# example, `summarize(x, new_var_name=max(some_variable))`.



# 11(b) (not autograded)
# Create a plot showing the change in the `dem_share_mean` variable over time.
# Add this plot to your write-up and comment on what you observe.



# Question 12 -------------------------------------------------------------
# 12(a)
# Calculate the average Democratic vote share for each state, and save the 
# results to an object named `state_avg`, with columns `state` and 
# `dem_pct_mean`.



# 12(b) (not autograded)
# Report the averages for Massachusetts and Texas. Are the results what you 
# would expect? Why or why not? Comment on what you find in your write-up.



# Question 13 (Extra Credit) ----------------------------------------------
# (not autograded)
# Using any coding concepts you want, figure out which state has changed the 
# most in absolute value, in terms of average Democratic vote share, between 
# 1970 and 2010. Report the state, the amount it has changed, and whether it
# has become more Democratic or more Republican. [Note: this question is a bit 
# more challenging than the others. You may want to use Google/StackOverflow. 
# Answers that involve manually calculating all 50 changes will not receive 
# credit. Include your code and your answer in your write-up.



# Question 14 (Extra Credit) ----------------------------------------------
# (not autograded)
# In each year, calculate the average Democratic vote share for (1) Open seats,
# (2) seats with a Democratic incumbent, and (3) seats with a Republican 
# incumbent. Exclude any cases where there are both Democratic and Republican
# incumbents. Make a plot showing comparing these three groups over time. Your
# plot should have clear axis labels and a legend differentiating the three
# groups. Customize the plot however you like to make it as clear and 
# informative as possible. Include the plot in your write-up. Describe any 
# trends you observe.


