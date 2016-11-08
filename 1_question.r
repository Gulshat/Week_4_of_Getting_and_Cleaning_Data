# 1 question
# load data

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
file_place <- "/Users/gulsat/R_coursera/Week_4_of_Getting_and_Cleaning_Data/data.csv"

download.file(url, destfile = file_place, method = "curl")

# read data
data <- read.csv("data.csv", header = TRUE)

# Apply strsplit() to split all the names of the data frame on the characters 
# "wgtp". What is the value of the 123 element of the resulting list?

names_s <- strsplit(names(data), "wgtp")

names_s[[123]]
# answer [1] ""   "15"

