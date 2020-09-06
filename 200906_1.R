library(dplyr)
library(ggplot2)
#가로로 합치기
test1 <- data.frame(id = c(1, 2, 3, 4, 5), 
                    midterm = c(60, 80, 70, 90, 85))
test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(70, 83, 65, 95, 80))
test1
test2

total <- left_join(test1, test2, by = 'id')
total

name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

exam <- read.csv("RProject/startr/csv_exam.csv")

exam_new <- left_join(exam, name, by = "class")

head(exam_new)
#세로로 합치기
group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 85))
group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))

group_all <- bind_rows(group_a, group_b)
group_all
#문제
mpg <- as.data.frame(ggplot2::mpg)

fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)
head(fuel)
#Q1
head(mpg)

mpg_new <- mpg
mpg_new <- left_join(mpg_new, fuel, by ="fl")
#Q2
mpg_new %>% select(model, fl, price_fl)
