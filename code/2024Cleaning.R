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
fileNames <- list.files("../sheets/2024")
pathNames <- paste0("../sheets/2024/",fileNames)
# Making a list of names for sheets, lacking the extension
sheetNames <- gsub(fileNames,pattern=".csv$", replacement="")

#reading in CSVs! 
starFrames <- lapply(pathNames, read.csv)

 starFrames <- list()
  for(fileNum in 1:length(fileNames))
  {
  assign(sheetNames[fileNum],read_csv(file = paste0("../sheets/2024/",fileNames[fileNum]), 
                                         col_types = c("c","D","c","c","n","n","n","c")))}



