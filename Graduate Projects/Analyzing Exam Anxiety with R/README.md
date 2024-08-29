
__Objective__ 

Perform an analysis of the exam anxiety dataset provided. A psychologist is interested in examining the effects of exam stress on exam performance. The sample was surveyed before the exam and the percentage mark of each student on the exam was used to assess performance. Create a scatter plot of exam performance and anxiety. Analyze the relationship between the variables exam performance, exam anxiety, number of revisions, and gender. Use the approach appropriate for this problem and discuss your results with the psychologist. 

__Setup__

The first task in this assignment is to load the proper libraries and dataset into R. The exam anxiety data file was loaded into R with the read.csv(file.choose()) command.
 
__Descriptive Statistics__

Descriptive statistics are performed to understand more about the data set that was just loaded. The console output below shows the various commands that were used to describe the data. There are 103 rows and 5 columns in this data set. The console output shows the means for revision (19.85), exam performance (56.57), and exam anxiety (74.34). The revised variable is slightly skewed to the right as indicated by the mean being higher than the median. The variables of exam performance and exam anxiety are slightly skewed to the left since the means are lower than their median. 
 
__Plotting__

I started the analysis by plotting the exam anxiety data. I created a boxplot of the variables revision, exam performance, and exam anxiety. The revise and exam anxiety variables contain outliers that can be shown in the screenshot below. I decided to keep these outliers in mind as I continued the analysis. 

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/850cff6d-edb0-4f15-be60-7ad969b39101">
</p>

Histograms of our three main variables are shown below. As shown, revise has a leftward skew and the other two variables have a rightward skew. None of the data variables appear to be normally distributed. 

Histogram of Exam Anxiety

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/af013e08-7fec-44df-9e40-d6af55a4ff23">
</p>

Histogram of Exam Performance

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/cb5f63a6-e38a-4c6d-97ae-10e57ea2de07">
</p>

Histogram of Revise

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/e66922f6-a6a7-4a59-b2e4-f8b38082c40e">
</p>

__Correlation Analysis__

A correlation analysis was used to understand the relationships of the variables in the data set. I started by creating a correlation plot between exam anxiety and exam performance. These variables seemed to have a direct correlation between each other as its assumed that exam anxiety will impede exam performance. The scatter plot is shown below and shows a negative correlation as the trend line is moving from the top left to the bottom right. 

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/4fcf01ad-8bdb-4b64-8c4c-a5f5f9d134c4">
</p>

I performed a correlation test using the cor.test() command in R. There seems to be a moderate negative correlation at -0.441 with a p-value less than alpha.

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/d39a4b1e-9efc-49eb-a198-1a0f6aa280c7">
</p>

Next, I performed a multiple correlation analysis using the pairs.panels() command from the psych package. This correlation gave me an output that showed the scatter plot, trend line, histogram, and correlation of each corresponding variable. As we can see, the highest correlated values happen to be the revise variable and the exam anxiety variable (-0.71). This indicates a high correlation. There are two moderately correlated values, revise-exam performance, and exam performance-exam anxiety. 

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/7fd9ab15-d99a-4718-b101-8a8057182485">
</p>

I performed a cor.test() command on all of the values that have a correlation to further validate the correlation via p-values. As the screenshot below indicates, all p-values are below alpha.

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/f15fa5c2-a6e4-4145-93af-33b18e3367bd">
</p>

__One-way ANOVA__

A one-way ANOVA test was used to test the differences in means among the values. TukeyHSD was used to test the significance of the pair-by-pair comparisons. 

The results indicate that we should reject our null hypothesis and determine that there is a difference in the means of our variables. A plot of the post-hoc test indicates that the differences in among the variables are greatly different from each other. 

<p align="center">
  <img width="446" alt="image" src="https://github.com/user-attachments/assets/1ca64924-3c97-46e7-bc18-02cb24b4f1f9">
</p>

__Takeaways__

The results of the analysis concluded that exam performance is affected by exam anxiety. The scatter plot showed a negative correlation between these two variables. As exam anxiety went up, exam performance would go down (at a correlation of -0.441). The number of revision was highly correlated with exam anxiety (-0.71), but had a moderate effect on exam performance (-0.40). 







