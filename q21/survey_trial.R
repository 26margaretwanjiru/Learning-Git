Off.the.Record.data <- read.csv("C:/Users/datascience-02/Desktop/Off the Record data.csv")
View(Off.the.Record.data)

attach(Off.the.Record.data)

devtools::install_github("dgrtwo/stacksurveyr", dependencies = T)

library(stacksurveyr)
library(dplyr)

Off.the.Record.data %>%
  filter(dignity_survey.1.player.ds_28 == "multi")

stack_multi("dignity_survey.1.player.ds_28")


Off.the.Record.data %>%
  count(marital, sort = TRUE)

Off.the.Record.data %>%
  filter(!is.na(dignity_survey.1.player.ds_28)) %>%
  select(dignity_survey.1.player.ds_28)

stack_multi("dignity_survey.1.player.ds_28")
