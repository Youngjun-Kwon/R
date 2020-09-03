df <- data.frame(var1 = c(4, 3, 8), var2 = c(2, 6, 1))
df

df$var_sum <- df$var1 + df$var2
df

df$var_mean <- (df$var1 + df$var2) / 2
df

mpg <- as.data.frame(ggplot2::mpg)

mpg$total <- (mpg$cty + mpg$hwy) / 2
head(mpg)

mean(mpg$total)

summary(mpg$total)
hist(mpg$total)

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")

head(mpg, 20)

table(mpg$test)

library(ggplot2)
qplot(mpg$test)

mpg$grade <- ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20)

table(mpg$grade)
qplot(mpg$grade)

#문제

midwest <- as.data.frame(ggplot2::midwest)

head(midwest)

midwest <- rename(midwest, total = poptotal)
midwest <- rename(midwest, asian = popasian)

head(midwest)

midwest$asian_ratio <- (midwest$asian / midwest$total) * 100

head(midwest)

hist(midwest$asian_ratio)

mean(midwest$asian_ratio)

midwest$asian_grade <- ifelse(midwest$asian_ratio >= mean(midwest$asian_ratio), "large", "small")

head(midwest)

table(midwest$asian_grade)
qplot(midwest$asian_grade)
