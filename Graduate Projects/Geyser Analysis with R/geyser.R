###Instructions
# Dataset from Old Faithful that has time duration in min for 272 eruptions.
# Provide means of both weight time and duration for eruptions. 
# Provide histogram of length of time of eruptions and check for normality. 
# 

library(nortest)
library(ggplot2)

### Import Data
geyser.data = read.csv(file.choose())


###Descriptive Statistics
str(geyser.data) #structure
summary(geyser.data) #summary
head(geyser.data) #head

###Assigning data objects
wait = geyser.data$waiting #wait time between eruptions
dur = geyser.data$duration #duration of eruption


### Inspecting variables
boxplot(wait, main="Boxplot of wait time between eruptions") #no outliers
boxplot(dur, main="Boxplot of the duration of each eruption") #no outliers
range(wait)

#Mean weight time
mean(wait) #72.31

#Mean duration time
mean(dur) #3.46

plot(dur,wait,main="Scatter plot of wait time and duration of eruptions",
     xlab="Duration of eruption", ylab="Wait time of eruption",pch=19)
      #we can see that there are 3 main clusters


###Duration - test for normality

#Histogram
hist(dur, main="Histogram of geyser eruption duration", 
     xlab="Duration of Eruption",col=3)

#QQ Plot
qqnorm(dur)
qqline(dur, col="red")

#Normality Test
shapiro.test(dur) #Hypothesis of normality is rejected
ad.test(dur)


###Wait time - test for normality

#Histogram
hist(wait, main="Histogram of wait time between eruptions", 
     xlab="Wait time between eruptions",col=3)

#QQ Plot
qqnorm(wait)
qqline(wait, col="red")

#Normality Test
shapiro.test(wait)#Hypothesis of normality is rejected
ad.test(wait)
