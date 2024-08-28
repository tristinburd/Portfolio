# Consumer Segmentation Analysis on the Powersports and Beverage Alcohol Industry

**Author:** Tristin Burdick  
**Updated:** August 28, 2024

---

## I. Project Goal

The primary goal of this project was to develop comprehensive consumer segmentation reports for the powersports and beverage alcohol industries. By identifying and analyzing distinct consumer personas, the project aimed to provide actionable insights into consumer behavior, preferences, buying tendencies, and attitudes. These insights were intended to inform marketing strategies, product development, and business planning. The project was also part of a broader initiative to conduct ongoing longitudinal studies to capture and understand consumer trends over time.

## II. Methodology

To achieve the project goals, a structured approach was followed, which included the following steps:

1. **Survey Design and Data Collection**:  
   Detailed surveys were created to capture key information about consumer preferences, buying habits, and attitudes. Branching logic and skip patterns were used to tailor questions to each respondent's profile, enhancing the relevance and accuracy of the data collected. The surveys were deployed using a reliable survey platform, and data quality was maintained through rigorous screening criteria to filter out inconsistent or low-quality responses.

2. **Data Cleaning and Preparation**:  
   Collected survey data underwent a thorough cleaning process, including managing missing values, transforming categorical responses into binary or numerical formats, and categorizing open-text responses into predefined groups. These steps ensured that the dataset was accurate, consistent, and suitable for analysis.

3. **Data Analysis Techniques**:  
   Exploratory data analysis (EDA) was conducted to understand the data's structure and identify initial patterns. Clustering techniques, such as k-means clustering, were employed to segment consumers into distinct personas based on behavioral traits. Feature selection using RandomForestRegressor helped identify the most impactful variables, which were then used in predictive modeling with XGBoost to classify consumers into these segments.

4. **Visualization and Reporting**:  
   Selective visualizations were created using Excel to highlight important findings and trends. These visualizations were complemented by tables and metrics to provide a comprehensive understanding of consumer behavior. The final report included polished visualizations produced with graphical software to clearly communicate insights to stakeholders.

## III. Analysis

1. **Exploratory Data Analysis (EDA)**:  
   EDA was conducted to gain a preliminary understanding of the data. This included calculating summary statistics, such as means and medians, and using visualizations like bar charts and histograms to identify patterns, outliers, and relationships within the data. EDA helped in setting the stage for more detailed analysis by uncovering important trends and characteristics.

2. **Clustering for Consumer Segmentation**:  
   Clustering methods, particularly k-means clustering, were used to segment consumers into distinct personas. The elbow method was applied to determine the optimal number of clusters, ensuring meaningful groupings. This segmentation process helped identify common characteristics among consumers, such as preferences for specific products, purchasing frequency, and brand loyalty.

3. **Predictive Modeling and Feature Selection**:  
   The RandomForestRegressor was used to select the top 20 features from the dataset, focusing on those most influential in determining consumer behavior. These features were then used to develop predictive models with XGBoost, classifying respondents into consumer segments. The models were validated using standard accuracy metrics and cross-validation techniques to ensure their robustness.

4. **Visualization Techniques**:  
   While much of the analysis relied on examining tables and summary statistics, selective visualizations were used to illustrate key findings. Charts and graphs were created to provide a visual representation of complex data, supporting the interpretation of results and aiding in the communication of insights.

## IV. Results

1. **Identification of Consumer Personas**:  
   The analysis successfully identified six unique personas in the beverage alcohol industry and seven in the powersports industry. Each persona was characterized by distinct behaviors, preferences, and attitudes, providing a clearer understanding of market diversity.

2. **Consumer Preferences and Buying Behavior**:  
   Notable differences in consumer preferences and buying behaviors were observed across segments. Some personas showed strong preferences for certain product types or brands, while others exhibited more varied buying patterns. These insights highlight the need for tailored marketing and product strategies.

3. **Attitudinal Differences**:  
   Survey data revealed varying attitudes towards brand loyalty, product quality, and price sensitivity. Certain personas prioritized premium quality and were willing to pay a higher price, while others were more price-sensitive and preferred budget-friendly options.

4. **Behavioral Trends and Demographics**:  
   Initial behavioral trends were identified, including shifts in purchasing frequency and preferred purchasing channels. Demographic factors, such as age, income, and geographic location, were found to significantly influence consumer behavior, suggesting opportunities for targeted marketing efforts.

5. **Predictive Model Accuracy**:  
   Predictive models using XGBoost achieved accuracy rates above 90% for all identified segments, demonstrating their effectiveness in classifying consumers based on survey responses. These models provide a strong foundation for future behavior prediction and trend analysis.

## V. Conclusion

This project successfully identified distinct consumer personas within the powersports and beverage alcohol industries, providing valuable insights into consumer behavior, preferences, and attitudes. By utilizing a combination of survey design, data analysis, and predictive modeling, the project delivered actionable recommendations that can enhance marketing strategies, product development, and customer engagement initiatives. Ongoing quarterly surveys and refined predictive models will continue to track and anticipate changes in consumer behavior, ensuring that businesses remain responsive to evolving market demands and trends.

---

**Note:** Specific data points and proprietary information have been generalized or omitted to comply with confidentiality agreements. For further details or inquiries, please contact Tristin Burdick.
