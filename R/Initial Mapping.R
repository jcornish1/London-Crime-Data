#loading packages
library(data.table)
library(tidyverse)

#loading in september 2020 crime data
met_data_2020 <- fread("./met_data/2020-09/2020-09-metropolitan-street.csv")

met_data_2020 %>%
  filter(Longitude < 0.3,
         Longitude > -0.5,
         Latitude < 51.75,
         Latitude > 51.25) %>%
  ggplot(aes(x = Longitude, y = Latitude)) +
  geom_point(col = "dodgerblue", alpha = 0.3, size = 0.5) +
  coord_quickmap()
