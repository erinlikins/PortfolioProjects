# Student Library Usage Survey Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools](#tools)
- [Data Preparation](#data-preparation)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Results](#results)
- [Recommendations](#recommendations)
- [Limitations](#limitations)

### Project Overview

This data analysis project aims to discover patterns within the results of a survey asking college students how they use their campus library. By analyzing this survey data, we can identify which trends stand out among the students' habits, with the goal of increasing student satisfaction with the library and ensuring the library is meeting the students' needs.

### Data Sources

Survey Data: The dataset used for this project can be found within the 'studentsLibraryHabitsSurvey.csv' file included within this repository. The file includes 228 survey responses, with each column of data representing one of 16 questions. This data has been fabricated and randomized for use in this project. 

### Tools

-SQL Server - Data analysis. The SQL code can be viewed in the ['library_survey_analysis.sql'] ([https://github.com/erinlikins/PortfolioProjects/blob/main/library_survey_analysis.sql)](https://github.com/erinlikins/PortfolioProjects/blob/main/library_survey_analysis.sql) tab.

-Tableau - Survey Data Dashboard. You can see it [here.]([https://public.tableau.com/app/profile/erin.likins/viz/StudentLibraryUsageSurveyResults/Dashboard1)](https://public.tableau.com/app/profile/erin.likins/viz/StudentLibraryUsageSurveyResults/Dashboard1))

### Data Preparation

Since I fabricated this dataset in Excel, the data cleaning and inspection process was completed quickly.

1. The dataset was loaded and inspected for any post-upload formatting errors.
2. I ensured there were no empty rows or columns loaded in.

### Exploratory Data Analysis

Please see the comments within the ![SQL code](https://github.com/erinlikins/PortfolioProjects/blob/main/library_survey_analysis.sql) file to see the full analysis process.
The analysis process was designed around finding general trends within the survey results and further exploring those trends to find key ways to optimize how the campus library can better serve its students.

These trends include:

-For what primary reasons are students coming to the library?
-What times do students prefer visiting the library, how long are they visiting for, and how frequently are they visiting?
-What are some of the key demographics of the students surveyed?
-How much do the surveyed students enjoy reading, and what types of materials do they prefer?
-How many students are aware of the library's digital resources, and which types of resources do they prefer using?
-How much do students spend on books annually?

### Results

Some key findings from this analysis are summarized as follows:

1. Half of the students surveyed are coming primarily to study. Of these students who come to the library to study, about 30% of them prefer to study using online resources. However, only 8% of these students report that the library's online learning resources are their most frequently used.
2. Nearly half of all students surveyed prefer visiting the library in the morning. About 60% of students visit the library 1-3 times per week.
3. 18% of students identified newspapers as their preferred reading material. 12% of students reported Spanish as their preferred reading language.
4. Approximately a third of students are not aware of the library's digital resources. Just over half of students who are aware of the resources actually use them.
5. 53% of students who spend over $100 annually on books report e-books as their preferred reading material.

### Recommendations

Based on this analysis, the following actions are recommended:

1. Implement targeted outreach to raise awareness and usage of digital resources, with the focus on online learning resources.
2. Assess if the library is opening early enough to cater to student needs. Do students prefer visiting the library before classes start, or just earlier in the day?
3. Analyze available library data to see if the library is accommodating to the wants and needs of the students. Is the library providing enough newspapers and Spanish materials to meet the needs of the students?
4. Only a small sample size spends over $100 annually on books, but the majority of those students report e-books as their preferred reading material. Consider investing in the online e-book catalog.  

### Limitations

After identifying the trends within these survey results, we are left with more questions that cannot be answered with the limited data we have. 
Some of these questions include:

1. What types of online learning resources do students prefer having access to?
2. How satisfied are the students with the services the library is currently offering?
3. Is the library providing enough preferred materials and seating?
4. How early do students prefer coming to the library?

In the future, the library could design and deploy a more comprehensive survey to answer these questions. The library could also consider holding a listening session to garner a deeper understanding of areas of needed improvement and innovation.
