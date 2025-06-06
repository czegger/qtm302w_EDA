
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/czegger/qtm302w_EDA/main?urlpath=rstudio)

# An Exploratory Analysis of Associations between Social Determinants of Health and Private Health Insurance Coverage in the US
#### -- Project Status: [Completed]

## Contributing Members

|Name     |  Institutional Affiliation   | 
|---------|-----------------|
|**Yvette Addo** | Emory University, Department of Quantitative Theory and Methods        |
|**Rashmi Raveendran** |     Emory University, Department of Quantitative Theory and Methods     |
|**Claire Zegger** |     Emory University, Department of Quantitative Theory and Methods     |


## Project Objective
Healthcare accessibility is a source of significant inequality in the United States. With no universal coverage policy, healthcare accessibility is largely connected to health insurance ownership. **This project aims to illustrate associations between private health insurance ownership and demographic variables commonly used in the health sciences** (race, education level, English proficiency). We intentionally chose to visually display these correlations to facillitate their interpretaion by investigators and policymakers and help them see this as a potential target to improve health dispairities in the US.

### Methods Used
* Summary Statistics
* Data Visualization
* Correlation Tests

### Technologies & packages
* **R** as programming language
* **renv** for package management and version control
* **tidyverse** including:
  * **dplyr** for data manipulation
  * **ggplot** and **plotly** for data visualization

## Project Description
The **central research question** of this project is the following: How is private health insurance correlated with social determinants of health? To answer this question, we selected data from the 2020 [Social Determinants of Health database](https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html) provided by the Agency for Healthcare Research and Quality. We chose to use this dataset because it is reputable, publically available and well-documented. Furthermore, the data is grouped at the county-level, which allowed us to conduct a relatively robust analysis of the relationship between health insurance coverage and demographic features across the US. 

Our analysis explored 3 key social determinants of health: race, education level, and finally English proficiency. **Race** was stratified into the following 5 groups: White, Black, Asian, American Indian/Alaska Native, and Multiracial. **Education level** was stratified into the following 4 groups: less than high school, high school graduate, Bachelor's degree, and graduate degree. **English proficiency** was operationalized by calculating the percentage of limited English-speaking households per county. In R, we explored the population distribution of each variable by computing summary statistics and creating histograms. For race, we obtained a more granular view by examining the racial distribution in the top 5 counties with the highest private insurance coverage by creating bar graphs. For education and English proficiency, we used the ggplot2 package to visualize the association with private insurance coverage. We quantified the observed correlations by calculating correlation coefficients. 

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
│   ├── EDA-Code-Notebook.html
│   └── data/
│       └── sdohc.csv
├── binder
└── renv
```
### Steps to run our analysis code in the browser (no download required)
Click on the binder link below & run the file EDA Code Notebook.Rmd

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/czegger/qtm302w_EDA/main?urlpath=rstudio)

**Note:** interface may take a few minutes to load

### Steps to run our analysis code locally
1. [Clone](https://help.github.com/articles/cloning-a-repository/) this repository.
2. Open repository in R Studio. The renv folder contains the library of packages used in this project. The renv.lockfile records the versions of these packages to be used. When this repository is opened, all necessary packages and versions will be installed automatically.
3. Run the file EDA Code Notebook.Rmd, which can be found in the analysis folder. This file contains the code we used to perform our analysis accompanied by explanations of the results. After running the code, scroll through the file to see graphs displaying the correlation between each variable and private insurance coverage.
4. For technical documentation on specific functions we used, simply type ?functionname() into the Console.




