

# An Exploratory Analysis of Associations between Social Determinants of Health and Private Health Insurance Coverage in the US
#### -- Project Status: [Completed]

## Contributing Members

|Name     |  Institutional Affiliation   | 
|---------|-----------------|
|**Yvette Addo** | Emory University, Department of Quantitative Theory and Methods        |
|**Rashmi Raveendran** |     Emory University, Department of Quantitative Theory and Methods     |
|**Claire Zegger** |     Emory University, Department of Quantitative Theory and Methods     |


## Project Objective
Healthcare accessibility is a source of significant inequality in the United States. With no universal coverage policy, healthcare accessibility is largely connected to health insurance ownership. **This project aims to illustrate associations between private health insurance ownership and demographic variables commonly used in the health sciences** (race, education level, English proficiency). By drawing attention to these correlations, we hope to reveal how insurance may have downstream effects on healthcare outcomes, and encourage future investigators and policymakers to see this as a potential target.

### Methods Used
* Summary Statistics
* Data Visualization
* Correlation Tests

### Technologies & packages
* **R** as programming language
* **tidyverse** for data formatting and cleaning
* **dplyr** for data manipulation
* **ggplot** and **plotly** for data visualization

## Project Description
The **central research question** of this project was how is private health insurance correlated with social determinants of health? To answer this question, we selected data from the 2019 [Social Determinants of Health database](https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html) provided by the Agency for Healthcare Research and Quality. We chose to use this dataset because it is reputable, publically available and well-documented. Furthermore, the data is grouped at the county-level, which allowed us to conduct a relatively robust analysis of the relationship between health insurance coverage and demographic features across the US. 

In the dataset, each observation represents a specific county, and each variable is measured in population percentage units. We began our analysis by exploring race, followed by education level, and finally English proficiency. 

**Race** was stratified into the following 5 groups: White, Black, Asian, American Indian/Alaska Native, and Multiracial. We visually examined the distribution of the percentage of each county comprised by a given racial group by creating histograms. The histogram for the distribution of the White population percentage in each county followed a left-skewed distribution, whereas all other racial groups followed a right-skewed distribution. Next we obtained a more granular view by examining the racial distribution in the top 5 counties with the highest private insurance coverage by creating bar graphs. In 4 of the 5 counties, private insurance coverage was significantly higher among White populations compared to any other racial group. To quantify these findings, we calculated the correlation cofficient between insurance coverage and race. This revealed a significant racial disparity in private health insurance coverage.

**Education level** was stratified into the following 4 groups: less than high school, high school graduate, Bachelor's degree, and graduate degree. Similarly to our exploration of race, we visualized the distribution of each education level in the US by creating histograms. We found that although the percentage of high school graduates per county followed a normal distribution, all other education levels followed a right-skewed distribution. To visualize the association with private health insurance, we created scatter plots with trend lines. Finally, we quantified the observed correlations between private health insurance and education level by calculating correlation coefficients.

**English proficiency** was operationalized by calculating the percentage of limited English-speaking households per county. We visualized the distribution of limited-English households in the US by creating a histogram, and visually examined its relationship with private health insurance coverage by creating a scatter plot with a best fit line. Finally we quantified the observed correlation by calcualting a correlation coefficent.

### Current Challenges
Although we were able to illuminate disparities in private health insurance coverage by race, education level, and English proficiency, additional data would be needed to understand whether this finding might explain disparities in health outcomes between these determinants.

### Potential Next Steps
In order to understand whether health insurance coverage is associated with health outcomes, we recommend combining our analysis with additional data about healthcare outcomes. Potential avenues include examining [data collected by the CDC](https://data.cdc.gov/).

## Getting Started

### Repository Organization
```
qtm302w_EDA/
├── analysis/
│   ├── EDA Code Notebook.Rmd
│   └── EDA-Code-Notebook.html
├── binder
├── data/
│   └── sdohc.csv
└── renv
```
### Steps to run our analysis code locally
1. Clone this repository (for help see this [tutorial](https://help.github.com/articles/cloning-a-repository/)).
2. Open repository in R Studio
3. Run the file EDA Code Notebook.Rmd

### Steps to run our analysis code in the browser (no download required)
Click on this binder link:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/czegger/qtm302w_EDA/main?urlpath=rstudio)

