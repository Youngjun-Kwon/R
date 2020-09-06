#총 정리 문제
library(dplyr)
library(ggplot2)

midwest <- as.data.frame(ggplot2::midwest)
#Q1
midwest <- midwest %>% 
  mutate(ratio_child = (poptotal-popadults) / poptotal * 100)

head(midwest)
#Q2
midwest %>% 
  select(county, ratio_child) %>% 
  arrange(desc(ratio_child)) %>% 
  head(5)
#Q3
midwest <- midwest %>% 
  mutate(grade_child = ifelse(ratio_child >= 40, "large", 
                              ifelse(ratio_child >= 30, "middle", "small")))

table(midwest$grade_child)
#Q4
midwest <- midwest %>% 
  mutate(ratio_asian = popasian / poptotal * 100)

head(midwest)

midwest %>% select(state, county, ratio_asian) %>% 
  arrange(desc(ratio_asian)) %>% 
  tail(10)
