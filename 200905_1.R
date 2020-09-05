library(ggplot2)
library(dplyr)

exam <- read.csv("RProject/startr/csv_exam.csv")

head(exam)

exam %>% 
  mutate(total = math + english + science, 
         mean = (math + english + science) / 3) %>% 
  head

exam %>% 
  mutate(test = ifelse(science >= 60, "Pass", "Fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head

#문제
mpg <- as.data.frame(ggplot2::mpg)
#Q1
mpg_new <- mpg

mpg_new %>% 
  mutate(total = cty + hwy, averg = (cty + hwy) / 2) %>% 
  arrange(desc(averg)) %>% 
  head(3)
