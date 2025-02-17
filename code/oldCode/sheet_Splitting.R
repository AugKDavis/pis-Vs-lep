
# This function was written to split the Excel file in which I originally
# entered 2024 star date into separate CSVs
# It is no longer useful since the orginal Excel has been removed
#But I thought it might come in handy so I am storing it here!


library(readxl)
getwd()


csv_saver <- function(sheet_number){
  sheetnames <- excel_sheets("starSurveys2024.xlsx")
  sheetnames <- sheetnames[1:23]
  csv <- read_xlsx(path = "starSurveys2024.xlsx", sheet = sheet_number)
  write.csv(csv, file = paste0(sheet_number,"_", sheetnames[sheet_number],".csv"))
  
}

lapply(1:23, csv_saver)