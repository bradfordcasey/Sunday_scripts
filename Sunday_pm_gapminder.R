# This is a script to explore the gapminder data using R
# Bradford Casey
# bcasey
# Apr 19 2015

#install dplyr package with dependencies
#installs all dependencies needed for the given package
install.packages("dplyr", dependencies = TRUE)

#loads library for dplyr into working environment
library("dplyr")

#Read in data table with flag for tab delimited
gap.in <- read.table("output/combined_gapMinder.tsv",
                     sep="\t",
                     header = TRUE)
View(gap.in)


