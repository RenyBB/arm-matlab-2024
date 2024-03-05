library(erp.easy)
require(tidyverse)
require(magrittr)
data(ERPdata)

ERPdata %>% select(Subject, Stimulus, Time, V11) %>%
    magrittr::set_colnames(c("Subject", "Stimulus", "Time", "Y")) %>%
    pivot_wider(names_from = "Stimulus",values_from ="Y") %>%
    mutate(diff = Negative - Neutral) %>%
    select(Subject, Time, diff) %>% 
    magrittr::set_colnames(c("Subject","Time","Y")) -> d


d %>% group_by(Time) %>% 
    summarise(Y = mean(Y)) -> d

d %>%
    ggplot(aes(x = Time, y = Y )) + geom_line()
# ggplot(aes(x = Time, y = Y, color = Subject)) + geom_line()
