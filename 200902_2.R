install.packages("readxl")

library(readxl)

df_finalexam <- read_excel("finalexam.xlsx", sheet = 1, col_names = T)
df_finalexam

mean(df_finalexam$math)
mean(df_finalexam$history)
mean(df_finalexam$english)

csv_exam <- read.csv("csv_exam.csv", header = T)
csv_exam

write.csv(df_finalexam, file = "output_newdata.csv")

head(csv_exam)
head(csv_exam, 10)

tail(csv_exam)
tail(csv_exam, 10)

View(csv_exam)

dim(csv_exam)

str(csv_exam)

summary(csv_exam)

mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
str(mpg)
dim(mpg)
summary(mpg)
