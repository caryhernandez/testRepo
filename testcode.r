### Lunch and Learn
### Session #1
### Chris Garnatz and Cary Hernandez

getwd()
# Prints out your working directory
mean??
setwd()
# Changes your current working directory

install.packages(packagename)
# Coding command to install a package
# Package - a combination of additional functions and features not in basic R



# Importing Data - still need to make testdata.csv file !!!!!!

Augmentdata <- read.csv(file="C:/Users/chernandez/Desktop/R Lunch and Learns/testdata.csv")
# The CSV file is now assigned to a dataframe called Aug_data
# To see the dataset type in the dataframe's name
Augmentdata

head(Augmentdata)
# Prints out the first ten rows of the dataset

str(Augmentdata)
# Prints out the structure of the dataset and each column/variable type
# Example - $ Ex.Imps is an integer and shows the some values of that column

# Int - integer 
# Num - numeric number so it can have decimals
# Factor - categorical or character variable. ex.) Data Source "adtech", "delta", etc 
# Logi - logical, Yes/No/NA or 1/0/NA


Augmentdata$CPA
# Access all CPA values in our dataset



# Each column is treated like a vector - a list of values. Yet, not all vectors are in data.frames
Budget_vector <- c(3000,5000,3400)

class(Budget_vector)
# class() returns the type of vector you are looking at


# You can apply functions to numeric vectors - similar to Excel - onto these vectors 
mean(Budget_vector)
sum(Budget_vector)


dayofweek <- c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
length(dayofweek)


class(dayofweek)
# Returns a value of "character". What were to happen if we tried calculating the mean? 

mean(dayofweek)
# Error given is saying the vector is now numeric or logical so it cannot calculate it



### D.I.Y. Make your own Vectors of numeric and character types!!!!!
numeric_vector <- c()


char_vec <- c("")


ls()
# Displays all variables & data.frames available for use that you have created








### Help Resources


# Question Mark ?function() 

?median
?read.csv

# Stack Overflow





# Example Using variables within a function
# Pull Augmented Data from downloads folder given date range you pulled for 
startdate <- "2016-04-11"
enddate <- "2016-04-11"

  filelocation <- "C:/Users/chernandez/Downloads/third_party_automated_data_new_start_"
  end = "_end_"
  forstring = "_for_"
  dataname_end <- "chernandez@quantcast.com.csv"
  
AugmentedData <- read.csv(file=paste(filelocation,startdate,end,enddate,forstring,dataname_end,sep=""))

AugmentedData2 <- read.csv(file=paste("C:/Users/chernandez/Downloads/third_party_automated_data_new_start_",startdate,"_end_",enddate,"_for_",dataname_end,sep=""))

summary(AugmentedData)








