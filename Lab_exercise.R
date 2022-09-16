# SECOND LAB SESSION ----------
#First session using R. Set everything up. Checked lectures material. 
#Created a new repo on Github. Cloned it to local machine through RStudio

#Step 1: Install packages----
#Don't forget to install packages in the console!
install.packages(c("tidyverse", "gapminder", "pacman"))  
#Step 2: Call the packages to the current project------ 
pacman::p_load(tidyverse, gapminder)
#Step 3: Load your Data into R------
data(gapminder)  
head(gapminder)
# Step 4: Clean your Data
# 4.1.Created a new dataframe called "gapminder_clean". Renamed 2 variables with 
#function "rename", added a new one with function "mutate"
gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)
