#The package which I might need. 
library(tidyverse)  #helps wrangle data
library(lubridate)  #helps wrangle date attributes
library(ggplot2)  #helps visualize data
library(dplyr)


#Step 1:- Uploading the datasets and specifying the column names for all months.
install.packages("readr")
data1<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/02-22.csv", header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
         "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
         "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))

data2<-read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/03-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week")) 
data3<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/04-22.csv",header=TRUE,
                 col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                               "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                               "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data4<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/05-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data5<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/06-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data6<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/07-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data7<-read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/08-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data8<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/09-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data9<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/10-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data10<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/11-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data11<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/12-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))
data12<- read.csv("C:/Users/USer/OneDrive/Desktop/Programming/Google Analytics/Task_1/01-22.csv",header=TRUE,
         col.names = c("ride_id",	"rideable_type",	"started_at",	"ended_at",	"start_station_name",	
                       "start_station_id",	"end_station_name",	"end_station_id", "start_lat",	"start_lng",
                       "end_lat",	"end_lng",	"member_casual",	"length_ride",	"day_of_week"))

# STEP 2: WRANGLEING DATA AND COMBINE INTO A SINGLE FILE

# Checking the data structure
str(data1)
str(data2)
str(data3)
str(data4)
str(data5)
str(data6)
str(data7)
str(data8)
str(data9)
str(data10)
str(data11)
str(data12)
# Stack individual month's data frames into one big data frame
year<- rbind(data1,data2,data3,data4,data5,data6,data7,data8, data9,data10, data11, data12)
year
library(magrittr)
#
#Removing the columns not needed
year<- year %>%
  select(-c("start_lat", "start_lng", "end_lat", "end_lng" ))

# STEP 3: CLEAN UP AND ADD DATA TO PREPARE FOR ANALYSIS

View(year)

str(year)  #See list of columns and data types (numeric, character, etc)
summary(year)  #Statistical summary of data. Mainly for numerics




# Begin by seeing how many observations fall under each usertype
table(year$member_casual)
# Reassign to the desired values (we will go with the current 2020 labels)
year <-  all_trips %>% 
  mutate(member_casual = recode(member_casual
                                ,"Subscriber" = "member"
                                ,"Customer" = "casual"))
# We don't have subscriber and customer in our table.
year$date <- as.Date(year$started_at) #The default format is yyyy-mm-dd
year$month <- format(as.Date(year$date), "%m")
year$day <- format(as.Date(year$date), "%d")
year$year <- format(as.Date(year$date), "%Y")
year$day_of_week <- format(as.Date(year$date), "%A")
View(year)

# Adding a "ride_length" calculation to all_trips (in seconds)
year$ride_length <- difftime(year$ended_at,year$started_at)

# Inspecting the structure of the columns
str(year)
# Converting "ride_length" from character to numeric so we can run calculations on the data.

year$ride_length <- as.numeric(year$ride_length)
is.numeric(year$ride_length)

# Remove "bad" data
# The dataframe includes a few hundred entries when bikes were taken out of docks and checked for quality by Divvy or ride_length was negative
# We will create a new version of the dataframe (v2) since data is being removed

year_v2 <- year[!(year$start_station_name == "HQ QR" | year$ride_length<0),]
View(year_v2)


# STEP 4: CONDUCTING DESCRIPTIVE ANALYSIS


mean(year_v2$ride_length) #straight average (total ride length / rides)
median(year_v2$ride_length) #midpoint number in the ascending array of ride lengths
max(year_v2$ride_length) #longest ride
min(year_v2$ride_length) #shortest ride

# Summary of the specific attribute
summary(year_v2$ride_length)

# Comparing members and casual users
aggregate(year_v2$ride_length ~ year_v2$member_casual, FUN = mean)
aggregate(year_v2$ride_length ~ year_v2$member_casual, FUN = median)
aggregate(year_v2$ride_length ~ year_v2$member_casual, FUN = max)
aggregate(year_v2$ride_length ~ year_v2$member_casual, FUN = min)
            
# The average ride time by each day for members vs casual users
aggregate(year_v2$ride_length ~ year_v2$member_casual + year_v2$day_of_week, FUN = mean)

# Ordering the days of the week.
year_v2$day_of_week <- ordered(year_v2$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

# Now, running the average ride time by each day for members vs casual users
aggregate(year_v2$ride_length ~ year_v2$member_casual + year_v2$day_of_week, FUN = mean)

# analyzing ridership data by type and weekday
year_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>%  #creates weekday field using wday()
  group_by(member_casual, weekday) %>%  #groups by usertype and weekday
  summarise(number_of_rides = n()							#calculates the number of rides and average duration 
            ,average_duration = mean(ride_length)) %>% 		# calculates the average duration
  arrange(member_casual, weekday)								# sorts

#  Visualizing the number of rides by rider type
year_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual, weekday)  %>% 
  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge")

library(ggplot2)
# Let's create a visualization for average duration
year_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual, weekday)  %>% 
  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +
  geom_col(position = "dodge")

write.csv(year_v2, "C:\\Users\\USer\\OneDrive\\Desktop\\Programming\\data.csv", row.names=FALSE)
