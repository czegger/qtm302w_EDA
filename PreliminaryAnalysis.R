

sdoh <- read.csv("data/sdohc.csv")

# % of population with private health insurance

summary(sdoh$ACS_PCT_PRIVATE_ANY)


# load packages
library(tidyverse)
library(ggplot2)
  

# drop rows with NA values in variables of interest 
sdoh <- sdoh %>%
  drop_na(ACS_PCT_PRIVATE_ANY) %>% ## % pop. w/private health insurance
  drop_na(COUNTY)

# calculate summary statistics for % pop. w/private health insurance variable
summary(sdoh$ACS_PCT_PRIVATE_ANY)

# visualize distribution of insurance coverage in US by county
ggplot(sdoh, aes(x=ACS_PCT_PRIVATE_ANY)) + 
  geom_histogram(color = "grey", fill = "light blue")+
  xlab("% of county population with private health insurance")+
  ylab("number of counties")+
  ggtitle("Distribution of private health insurance coverage by county in the US")+
  theme_minimal()

# create vector with counties and insurance
keep <- c("COUNTY", "ACS_PCT_PRIVATE_ANY")

# create new data frame with selected variables
insurance_df <- sdoh[keep]

# sort data in descending order by insurance coverage
insurance_df <- insurance_df %>%
  arrange(desc(ACS_PCT_PRIVATE_ANY))
  
# view top 5 counties with highest insurance coverage
head(insurance_df)

# sort data in ascending order by insurance coverage
insurance_df <- insurance_df %>%
  arrange(ACS_PCT_PRIVATE_ANY)

# view top 5 counties with lowest insurance coverage
head(insurance_df)




#### Claire's analysis: limited English-speaking households

# summary statistics for % of limited English-speaking households
summary(sdoh$ACS_PCT_HH_LIMIT_ENGLISH)

# correlation between limited english speaking and private ensurance coverage
ggplot(sdoh, aes(x = ACS_PCT_HH_LIMIT_ENGLISH, y = ACS_PCT_PRIVATE_ANY)) +
  geom_point(color = 'blue',alpha = 0.5, size = 2) +
  xlab("% of limited English-speaking households") +
  ylab("% of population with private insurance")+
  ggtitle("Association between English-speaking and private insurance ownership")+
  theme_minimal()

## calculate correlation coefficient
cor(sdoh$ACS_PCT_HH_LIMIT_ENGLISH, sdoh$ACS_PCT_PRIVATE_ANY)


# distribution of percentage of limited English-speaking households
ggplot(sdoh, aes(ACS_PCT_HH_LIMIT_ENGLISH)) + #selects variable to put on x axis
  geom_histogram(color = 'grey', fill = 'light blue')+ #sets graph color
  xlab("% of limited English-speaking households") + #adds x axis label
  ylab("number of counties")+ #adds y axis label
  ggtitle("Distribution of US Counties by Percentage of Limited English-Speaking Households")+
  theme_minimal() #sets graph aesthetics built into ggplot package






