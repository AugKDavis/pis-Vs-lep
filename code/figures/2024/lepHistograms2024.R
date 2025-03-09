# ---------------------------------------------------------------------------------------------------------
# Visualizing size-frequencies of Leptasterias in 2024
# The purpose of this R script is to visualize belt transect data on Leptasterias 
# at sites around San Juan Island. I will make an overall size-frequency histogram, as well as one
# For each site!
# ---------------------------------------------------------------------------------------------------------

# ------------------
#   Load libraries and dependencies!
# ------------------
#For reading files, manipulating, plotting, etc.
library(tidyverse)

#To get theme for ggplot figures!
source("../theme/ktTheme.R")

# ------------------
#   Bring in data!
# ------------------
#Read in data from cleanData folder!
starData <- read_csv("../../../sheets/cleanData/2024/starData2024.csv")

# ------------------
#   Make a histogram of wet weights, pooling sites!
# ------------------
starData %>%
  filter(Spp == 'LEP') %>%
  ggplot(aes(y=Wt)) + 
  geom_histogram(binwidth = 2.5, 
                 color = 'black',
                 fill="#E0B46C") + 
  scale_y_continuous(limits = c(-2, 20), 
                     expand = c(0,0), 
                     breaks = c(0,5,10,15,20)) +
  scale_x_continuous(limits = c(0,500), 
                     expand = c(0,0), 
                     breaks = c(0,100,200,300,400)) +
  ktTheme

# ------------------
#   Make a multi-panel histogram of size-dist by site!
# ------------------


  
  