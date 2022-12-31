

library(ggplot2)

setwd("D:\\1_Coding\\1_Coding_Theory\\Udemy\\R_Programming\\Section_5\\Homework\\Assignment3")


world_trend <- read.csv("World-Trend_Data.csv")

mydf <- data.frame(Code = Country_Code, Life_1960 = Life_Expectancy_At_Birth_1960, Life_2013 = Life_Expectancy_At_Birth_2013)

head(mydf)

head(world_trend)


mergeddata <- merge(world_trend,mydf, by.x = "Country.Code", by.y = "Code")

head(mergeddata)



year_1960 <- mergeddata[mergeddata$Year == 1960,]
year_1960

qplot(data = mergeddata, x = Fertility.Rate, y = Life_1960, color = Region, size = I(3), alpha = I(0.6), main = "Birth Rate v/s Life Expectancy At Birth 1960")

cor(mergeddata$Fertility.Rate, mergeddata$Life_1960)
#-0.5730321



