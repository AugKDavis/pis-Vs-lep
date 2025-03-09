# ---------------------------------------------------------------------------------------------------------
# Cleaning 2024 Sea Star Belt Transect Data
# The purpose of this R script is to clean the 2024 belt data
# In particular, to produce one dataframe --> CSV with all of the star survey data gathered this year
# ---------------------------------------------------------------------------------------------------------

# ------------------
#   Load libraries!
# ------------------
#For reading files, manipulating, pipes, etc.
library(tidyverse)
#-----------------
# Importing data!
#-----------------
# Getting list of CSV file names
pathNames <- paste0("../../sheets/rawData/2024/", list.files("../../sheets/rawData/2024"))

#reading in CSVs! 
starFrames <- lapply(pathNames, read_csv, col_types = cols(.default = 'n', 
                                                           Date = 'D',
                                                           Belt = 'c',
                                                           Spp = 'c',
                                                           Site='c',
                                                           Notes='c'))
#-----------------
# Merging data into one dataframe!
#-----------------
#Binding dataframes in list
starData <- bind_rows(starFrames, .id = 'id')


#Getting rid of unnecessary columns
starData <- starData %>% select (-c(id, `...1`))


#-----------------
# Writing dataframe into folder for cleaned data!
#-----------------
write.csv(starData, "../../sheets/cleanData/2024/starData2024.csv", row.names = FALSE)