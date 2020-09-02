history <- c(90, 80, 70, 60)
history

math <- c(50, 60, 100, 20)
math

df_midterm <- data.frame(history, math)
df_midterm

class <- c(1, 1, 2, 2)

df_midterm <- data.frame(df_midterm, class)
df_midterm

mean(df_midterm$history)
mean(df_midterm$math)
