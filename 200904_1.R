library(dplyr)

exam <- read.csv("RProject/startr/csv_exam.csv")
exam

exam %>% filter(class == 1)
exam %>% filter(class == 2)
exam %>% filter(class != 1)
exam %>% filter(class != 3)

exam %>% filter(math > 50)
exam %>% filter(math < 50)
exam %>% filter(english >= 80)
exam %>% filter(english <= 80)

exam %>% filter(class == 1 & math >= 50)
exam %>% filter(class == 2 & english >= 80)

exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(english <90 | science < 50)

exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1, 3, 5)) # |이 반복해서 사용될 때

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)

mean(class1$math)
mean(class2$math)

#문제
#Q1
mpg <- as.data.frame(ggplot2::mpg)

displ4 <- mpg %>% filter(displ <= 4)
displ5 <- mpg %>% filter(displ >= 5)

mean(displ4$hwy)
mean(displ5$hwy)
#Q2
audi <- mpg %>% filter(manufacturer == "audi")
toyota <- mpg %>% filter(manufacturer == "toyota")

head(audi)
head(toyota)

mean(audi$cty)
mean(toyota$cty)
#Q3
three <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))

head(three)
table(three$manufacturer)

mean(three$hwy)
