###Instructions
# Psychologist is testing for effects of exam stress on exam performance. 
# Create scatter plot of exam performance and anxiety. Analyze relationship 
# between exam performance, exam anxiety, number of revisions, and gender .
# Select the best approach to analyse data and interpret results. 

library(ggplot2)
library(psych)

### Import Data
exam.data = read.csv(file.choose())

###Descriptive Statistics
str(exam.data) #structure
summary(exam.data) #summary
head(exam.data) #head
class(exam.data)

exam.data$Gender = as.factor(exam.data$Gender) #Change to factor

attach(exam.data)

#plotting

boxplot(exam.data$Revise,exam.data$ExamPerf,exam.data$ExamAnxiety,
        names=c("Revise","Exam Performance","Exam Anxiety"),
        main="Box Plot of Exam Data")
        #Revise and Exam Anxiety have outliers

#Histogram of Revise
hist(exam.data$Revise, main="Histogram of Revise", xlab="Revise",
     col=3)

#Histogram of Exam Anxiety
hist(exam.data$ExamAnxiety, main="Histogram of Exam Anxiety", 
     xlab="Exam Anxiety",
     col=3)

#Histogram of Exam Performance
hist(exam.data$ExamPerf, main="Histogram of Exam Performance", 
     xlab="Exam Performance",
     col=3)

#Correlation of Exam Anxiety and Performance
plot(ExamAnxiety,ExamPerf, main="Correlation of Exam Anxiety and Performance",
     pch=19, col=3)
abline(lm(ExamPerf~ExamAnxiety), col=2, lw=3)

cor.test(ExamAnxiety,ExamPerf) #cor= -0.441, p-value = 3.123e-06

#Multiple Correlation with Pairs Plot 
pairs.panels(exam.data[,2:5],
             methos="pearson",
             hist.col = "lightblue",
             density = T,
             ellipses = T)

      #High correlations among Revise-Exam Anxiety, Revise-Exam Performance,
      #Exam Performance-Exam Anxiety

cor.test(ExamAnxiety,Revise) #cor= -0.71, p-value = 2.2e-16
cor.test(ExamAnxiety,ExamPerf) #cor= -0.441, p-value = 3.128e-06
cor.test(ExamPerf,Revise) #cor= 0.40, p-value = 3.343e-05


#One Way ANOVA

#Ho: = No difference in means
#Ha: = Difference in means

tmp = stack(exam.data, select=c("Revise","ExamPerf","ExamAnxiety"))
summary(tmp)

exam.data.aov = aov(values~ind, data=tmp)

summary(exam.data.aov)

exam.data.tk = TukeyHSD(exam.data.aov)
exam.data.tk

model.tables(exam.data.aov, type="effects")
model.tables(exam.data.aov, type="means")
