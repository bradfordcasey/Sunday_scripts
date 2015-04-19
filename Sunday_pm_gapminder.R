# This is a script to explore the gapminder data using R
# Bradford Casey
# bcasey
# Apr 19 2015

#install dplyr package with dependencies
#installs all dependencies needed for the given package, hash out after running once
#install.packages("dplyr", dependencies = TRUE)

#loads library for dplyr into working environment
library("dplyr")

#Read in data table with flag for tab delimited
gap.in <- read.table("output/combined_gapMinder.tsv",
                     sep="\t",
                     header = TRUE)
View(gap.in)
#gap.in %>%
#  filter(country == "China") %>%
# select(country, year, pop) %>%
#  group_by(country) %>%
#  summarize(min = min(pop))

#Challenge
#calculate mean population per continent per year for years prior to 1990


gap.out <- gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent,year) %>%
  summarize(mean = mean(pop))
gap.out <- summarize
view(gap.out)
  
  