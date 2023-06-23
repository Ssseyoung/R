# 필요한 데이터 추출
install.packages("readxl")
library(readxl)
path <- "C:/LSY/R/code/source/"
file <- paste0(path, "Oneperson_household.xlsx")
Oneperson_data <- read_excel(file)
View(Oneperson_data)

# 성북구, 중구 데이터만 추출
install.packages("dplyr")
library(dplyr)
Oneperson_data_select <- Oneperson_data[,c("2021...6"
                                           ,"2021...9"
                                           ,"2021...12"
                                           ,"2021...15"
                                           ,"2021...18"
                                           ,"2021...21"
                                           ,"2021...24"
                                           ,"2021...27"
                                           ,"2021...30"
                                           ,"2021...33"
                                           ,"2021...36"
                                           ,"2021...39"
                                           ,"2021...42"
                                           ,"2021...45"
                                           ,"2021...48")]
View(Oneperson_data_select)
