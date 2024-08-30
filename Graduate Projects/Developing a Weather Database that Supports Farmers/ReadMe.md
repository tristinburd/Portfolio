
__Introduction__

Big data is changing the agricultural industry by providing information about changing weather patterns, predicting rainfall, usage of fertilizer, and other ways to assist farmers in maximizing productivity. The purpose of this project is to develop a product that supports farmers in decision-making.  

The data for this project was obtained using an API from the National Oceanic and Atmospheric Administration (NOAA). NOAA is a regulatory agency within the US Department of Commerce that forecasts daily weather, severe storms, and other climate monitoring measures (National Oceanic and Atmospheric Administration, 2022). 

The end goal of this project is to develop a prototype and proof of concept for a data warehouse built with historical weather measures. The intended use of this data warehouse is to provide relevant weather measures for farmers to use and adjust the way they produce and manage agricultural products. The scope of this project focuses on the temperature and precipitation levels of Arizona during the onset of the planting season (April through June). The data provided in this prototype may reveal valuable insights for farmers in the Arizona agricultural industry. 

__Methodology__

The successful execution of this project depends on the efficiency of the ETL process (extract, transfer, load) for obtaining data and developing a functional data warehouse. This process involves seven steps, in order of obtaining the data, processing and transforming the data, assessing the data for quality, building the data warehouse design and schema, generating sample reports, and considering legal and ethical considerations.  

__Obtaining Data__

The first step in the ETL process is obtaining the data from a data source. NOAA provides access to its API to pull measurement data from its large database. In order to use the API, the user must obtain a token key by signing up on the NOAA website. 

Accessing and submitting get requests was developed using a Python script. This way is much easier and is has the ability to be automated using Pythons many libraries and functions. Queries are easily made in the Python script and are assigned to objects that can be later called to view the results again. Figure 1.1 shows the Python script with the necessary code to submit API requests and explore the database. 

A query was built in the Python script that submits an API call for the necessary information associated with this project. The data that was obtained involves measurement data for precipitation, maximum temperature, minimum temperature, and dates. This was saved as an “ar_stations” object in Python and saves the results in a JSON file. Other objects in Python were created to obtain more details about the stations used to collect the measurement data (i.e. station name, elevation, longitude, latitude, etc.). These were saved as “station_1_details, station_2_details, station_3_details, and station4_details”. The results were also saved in a JSON file. 

__Loading and Transforming Data__

Once the data was obtained from the NOAA API and saved into JSON files, the next step was to load and transform the data into a tabular format. The data was loaded into an Excel file using built-in functionality for JSON files. Figure 1.2 shows the raw data output from the JSON file. Clearly, the file must be transformed into a tabular format suitable for our data warehouse schema. For example, the “datatype” column in Figure 1.2 will need to be separated into its own column field to be able to be queried and joined with other tables. 

The proposed source to target map was used as a guide and blueprint for the transformation process. Figures 1.3, 1.4, and 1.5 show the source-to-target maps for the weather facts table, time dimension table, and location dimension table. The main transformational changes involve changing temperature and precipitation measures to standard values (i.e. Fahrenheit, inches, etc.), generating proper time fields from the date variable, and formatting values to the proper format in the mapping document. The final tabular data set is shown in Figure 1.6. 

__Figure 1.2 Raw Data Output__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/3eec4cc6-8643-4e0f-9e2e-ad237acca77d">

__Figure 1.3 Weather Facts Source to Target Map__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/2c582fd7-6e04-46dc-aa81-c866623233d5">

__Figure 1.4 Time Dimension Source to Target Map__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/f8418a5a-1e8a-49d3-9feb-4729dec254f8">

__Figure 1.5 Source to Target Map__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/7003e956-4b49-4ee1-9f6e-8c95c935af41">

__Figure 1.6 Tabular Table - Final__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/960aed4d-4ade-4379-b2d0-c63135f7dccf">

__Assessing Data Quality__

The data quality was further assessed using various data validation techniques. An error log was created to identify and record the changes that needed to be made to the dataset. The source data obtained from the NOAA API was relatively clean and free of issues. The majority of the issues found in the error log were null values found in the measurement fields. In the future, null values should be treated with care and assessed for quality issues prior to loading into the data warehouse. The null values in this scenario were possibly created from instrumentation error (i.e. the meters tracking the measures were faulty). Therefore, control measures need to be put in place for future implementation to make sure no null values are present prior to developing the larger-scale data warehouse. Figure 1.6 shows the error log used to assess data quality issues. 

__Figure 1.7 Error Log__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/9b377e6f-cb20-477d-8164-34f7b4e43072">

__Data Warehouse Design and Schema__

The tabular dataset in Figure 1.6 now had to be transformed into dimensional tables that can be loaded into a data warehouse. The schema for the data warehouse was provided (shown in Figure 1.8) and contains a simple star schema design. The primary keys involve the Date and Station_ID fields in a one-to-many relationship. The data file attached to the submission of this project contains the dimension tables with the populated data. 

__Figure 1.8 Data Warehouse Schema__

![image](https://github.com/user-attachments/assets/418c8b6a-5812-4f7c-8d4b-19641b169cc5)

Crosstab Reporting Functionality
The tabular dataset in Figure 1.6 was also put into a pivot table in Excel for cross-tab reporting and analysis. A user can apply multiple dimensions of data for more in-depth insights. For example, a user may want to know the average maximum and minimum temperatures during the planting season. Figure 1.9 shows an average increase in maximum temperature, as expected in the summer months. Furthermore, a user may also want to know the precipitation levels to better prepare themselves during the planting season. Figure 1.10 shows that most of the precipitation levels in Arizona happened during the month of June near the TUMACACORI station location. Upon further analysis, most of the precipitation happened near the end of the month as shown in Figure 1.11. 

__Figure 1.9 Cross Tab Chart – Average Max and Min Temperatures by Month__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/dd3277fd-ee5f-436b-a20d-db66b1de4325">

__Figure 1.10 Cross Tab Chart – Precipitation for Each Station by Month__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/ca34e3fc-4cd1-432e-9544-a2204daf8eb0">

__Figure 1.11 Cross Tab Chart – Precipitation for TUMACACORI Station in June__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/24f46963-ce54-47df-80d1-6be67aa6b1de">

__Station Geolocation__

GeoJSON was used to visualize the locations of the measurement stations in the state of Arizona. An HTML file was created using Spyder, an open-source cross-platform integrated development environment (IDE). The script was created using the information found in the “station_details” object in the python script (Figure 1.1). 

This provided the results found in Figure 1.13 and a map of all the station locations. As we can see, TUMACACORI station is located in southern Arizona which may explain why it had higher precipitation than the other three locations. 

__Figure 1.13 GeoJSON with StationID Attribute__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/9fbd0ca5-69be-4db8-8055-489ceba0ab40">

__Legal and Ethical Considerations__

The data obtained and used in this project, and any further implementation of this data warehouse must be true and accurate. Users of this data will be making important decisions that will affect the decision-making, implementation, and planning of current and future agricultural products within the industry. To accomplish this, further development must contain accurate values pulled from the NOAA API geographically dispersed throughout the state of Arizona. This is to prevent inherent bias in station selection that could affect the reality of the data. 

__Data Flow Diagram__

The data flow diagram is a summary of the ETL process. It shows how data is obtained and how it flows through the entire process. Figure 1.14 depicts the data flow diagram starting from the upper left corner and ending in the bottom right corner. The data flow diagram shows how two JSON files were extracted from the NOAA API. An external source of data was used to obtain the zip code and county of the four stations. All the data was compiled into a tabular format and assessed for data quality using data validation techniques and an error log. The data was then processed and transformed into dimensional tables using the data warehouse schema. The data warehouse can then be loaded with these tables so a user can query and obtain data reports. 

__Figure 1.14 Data Flow Diagram__

<img width="470" alt="image" src="https://github.com/user-attachments/assets/463f0193-c9a7-4835-b826-332558f78b9a">

__Conclusion__

The ETL process for this prototype seems to be feasible for further implementation. The process of extracting the data from the API, using a Python script, is an easy task to perform for the average data user. It also has the possibility to be automated with other systems. The only concern about data integrity involves completeness. Some of the station measures contain null values that should be treated with special care. This could be a result of faulty instrumentation or other errors. Overall, The ETL process enables the implementation of a data warehouse containing historical weather data that users can use to query and gain insights. 
