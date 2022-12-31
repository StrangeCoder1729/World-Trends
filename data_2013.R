




 

year_2013 <- mergeddata[mergeddata$Year == 2013,]
year_2013

qplot(data = mergeddata, x = Fertility.Rate, y = Life_2013, color = Region, size = I(3), alpha = I(0.6), main = "Birth Rate v/s Life Expectancy At Birth 2013")


head(mergeddata)

 

cor(mergeddata$Fertility.Rate, mergeddata$Life_2013)
#-0.5012555
