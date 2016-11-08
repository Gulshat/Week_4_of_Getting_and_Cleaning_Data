# 2 question
# load data

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destination <- "/Users/gulsat/R_coursera/Week_4_of_Getting_and_Cleaning_Data/data2.csv"

download.file(url, destfile = destination, method = "curl")

# read data
data2 <- read.csv("data2.csv", header = FALSE, skip = 5, nrows = 190,
                  stringsAsFactors = FALSE)
# Let's observe data
head(data2)

# leave 4 columns
data2 <- data2[, c(1, 2, 4, 5)]

colnames(data2) <-c("CountryCode", "Rank", "Country.Name", "GDP.Value")
data2$GDP.Value <- as.numeric(gsub(",", "", data2$GDP.Value)) 

mean(data2$GDP.Value)

# answer [1] 377652.4

# 3 question
# In the data set from Question 2 what is a regular expression that would 
# allow you to count the number of countries whose name begins with "United"? 
# Assume that the variable with the country names in it is named countryNames.
# How many countries begin with United?

isUnited <- grepl("^United", data2$Country.Name)
summary(isUnited)

# answer
#    Mode   FALSE    TRUE    NA's 
# logical     187       3       0 
