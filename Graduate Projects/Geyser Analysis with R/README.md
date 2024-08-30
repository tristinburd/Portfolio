
__Objective__

Perform an analysis of the geyser dataset provided. Analyze the means of wait time and duration of the geyser eruption. Perform a normality assessment and determine if the geyser eruptions are normally distributed. 

__Setup__

The first task in this assignment is to load the proper libraries and dataset into R. The geyser data file was loaded into R with the read.csv(file.choose()) command.


__Descriptive Statistics__

Descriptive statistics are performed to understand more about the data set that was just loaded. The console output below shows the various commands that were used to describe the data. There are 299 rows and 3 columns in this data set. The console output shows the means for both the wait time between eruptions (72.31) and the mean eruption duration (3.46). 

__Inspecting Variables__

I inspected each variable further by creating a boxplot to visualize the data distribution. There boxplots below show no outliers in the data set. 50% of the wait time between eruptions will be between 60-85 minutes. The wait times can vary widely, with a range from 40-110 minutes. 50% of the data for the duration of each eruption will fall between 2.0-4.5 minutes. Both variables have a mean that is below the median, indicating leftward skewness. 

<p align="center">
  <img width="468" alt="image" src="https://github.com/user-attachments/assets/8e1b0726-cbbc-47cb-8c52-40def43620f6">
</p>

__Mean times for variables__

Instead of using the summary() command to find the means, I used the mean() command to find the means for both variables. The mean wait time for the geyser eruptions is 72.31 minutes. The mean eruption duration was 3.46 minutes. 

<p align="center">
  <img width="468" alt="image" src="https://github.com/user-attachments/assets/a899de80-12cb-42a4-bd26-4b2473985573">
</p>

A scatter plot was created to show the relationship between the two variables. The plot shows three distinct clusters around the eruption’s durations of 2 minutes and 4 minutes. The clustering around the 4-minute eruption duration mark varies slightly in the wait time between each eruption. Similarly, the clustering around minute two can be compared to the high point of the clustering in minute 4.

<p align="center">
  <img width="468" alt="image" src="https://github.com/user-attachments/assets/08b2550b-bffc-4627-9321-97e9bf160ade">
</p>

__Normality test for the duration variable__

A normality test was conducted on the eruption duration variable. A histogram was created to visually inspect the normality of the data. There is clearly no pattern of normality as there are two clusters of data centered around 2 minutes and 4 minutes. This is why there were two distinct groupings from the scatter plot above. 

<p align="center">
  <img width="468" alt="image" src="https://github.com/user-attachments/assets/4c231a49-287b-4e93-a1bd-06eb734b5ac8">
</p>

A qqplot was created to also test for normality. The data points do not resemble a straight line and therefore prove that the data is not normally distributed. The Shapiro-Wilk and Anderson-Darling test were also used to test the normality of the data. The p-values for both tests further validate that there is no pattern of normality within this data set.

<p align="center">
  <img width="468" alt="image" src="https://github.com/user-attachments/assets/031fb64e-73fc-4d8a-a172-5e3a96ff9b21">
</p>

__Normality test for the waiting variable__

A normality test was conducted on the eruption waiting time variable. A histogram was created to visually inspect the normality of the data. There is clearly no pattern of normality as there are two clusters of data centered around 55 minutes and 80 minutes. 

<p align="center">
  <img width="468" alt="image" src="https://github.com/user-attachments/assets/10f3a431-d3c9-4138-aa8d-bf0f24923c2e">
</p>

A qqplot was created to also test for normality. The data points do not resemble a straight line and therefore prove that the data is not normally distributed. The Shapiro-Wilk and Anderson-Darling test were also used to test the normality in the data. The p-values for both test firther validate that there is no pattern of normality within this data set. 

<p align="center">
  <img width="468" alt="image" src="https://github.com/user-attachments/assets/312940a3-5dff-4676-a881-9d8ce1417acf">
</p>

__Takeaways__

The Old Faithful geyser will have varying eruption times and wait times. A visitor will have an equal chance to see longer eruptions and shorter eruptions. What we do know, is that the geyser will generally have eruption times between 2-5 minutes each time it erupts. Bystanders will have to wait at least 50 minutes  before the next geyser eruption. 
