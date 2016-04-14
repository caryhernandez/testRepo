### Lunch and Learn
### Session #1
### Chris Garnatz and Cary Hernandez

install.packages(packagename)
# Coding command to install a package
# Package - a combination of additional functions and features not in basic R

library(packagename)
# Loads the library that has been installed


#### String/Variable Types ####


# Int - integer 
# Num - numeric number so it can have decimals
# Factor - categorical or character variable. ex.) Data Source "adtech", "delta", etc 
# Logi - logical, Yes/No/NA or 1/0/NA

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
# Create a five number long vector and find the mean
numeric_vector <- c()

# Create a character vector with three different values and return it's length
char_vec <- c("")


ls()
# Displays all variables & data.frames available for use that you have created


##### Go over Data.frame structure and visual #######



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

summary(Augmentdata)

Augmentdata$CPA
# Access all CPA values in our dataset


# Applying Functions onto columns in the example dataframe

# tapply examples










### Give example of pulling in Measure Data downloaded. 
# We will have to use the parameter skip. This tells how many rows to skip before beginning to read in data. 

Measure_Homeserve <- read.csv(file="C:/Users/chernandez/Downloads/_fp.event.Checkout+Confirmation.csv",skip=3)


Measure_Homeserve
head(Measure_Homeserve)
str(Measure_Homeserve)
summary(Measure_Homeserve)

## Note to team #### - When you load in Measure data, it reads in many numeric/integer variables as factors. 

### Transforms the variables that are read in as factors and changes them to be numerics. 
### This will help us make graphics and also apply functions such as mean() to them successfully. 
Measure_Homeserve$Page.views <- as.numeric(Measure_Homeserve$Page.views)
Measure_Homeserve$Visits <- as.numeric(Measure_Homeserve$Visits)
Measure_Homeserve$Uniques <- as.numeric(Measure_Homeserve$Uniques)
Measure_Homeserve$Page.views.per.Person <- as.numeric(Measure_Homeserve$Page.views.per.Person)








# Example Using variables within a function
# Pull Augmented Data from downloads folder given date range you pulled for 
startdate <- "2016-04-11"
enddate <- "2016-04-11"

  filelocation <- "C:/Users/chernandez/Downloads/third_party_automated_data_new_start_"
  end = "_end_"
  forstring = "_for_"
  dataname_end <- "chernandez@quantcast.com.csv"
  
AugmentedData <- read.csv(file=paste(filelocation,startdate,end,enddate,forstring,dataname_end,sep=""))

AugmentedData2 <- read.csv(file="C:/Users/chernandez/Downloads/third_party_automated_data_new_start_2016-04-11_end_2016-04-11_for_chernandez@quantcast.com.csv")
# The two above lines pull the same file to AugmentedData and AugmentedData2
# The first method could be helpful to clean up the method in writing a dataset you will pull often
# And you can easily change the date ranges and the file's location for better readability 



### Help Resources ###


# Question Mark ?function() 

?median
?read.csv

# Stack Overflow






