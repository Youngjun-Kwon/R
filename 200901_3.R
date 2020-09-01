library(ggplot2)

a <-c(1,2,3)

mean(a)
max(a)
min(a)

b <- c("a", "a", "b", "c")
qplot(b)

e2 <- c("Hello!", "World", "is", "good!")
e2

paste(e2, collapse = " ")
e2_paste <- paste(e2, collapse = " ")
e2_paste

e3_paste <- paste(e2, collapse = ",")
e3_paste

qplot(data = mpg, x = hwy)
qplot(data = mpg, x = cty)
qplot(data = mpg, y = hwy, x = drv, geom = "point")
qplot(data = mpg, y = hwy, x = drv, geom = "boxplot")
qplot(data = mpg, y = hwy, x = drv, geom = "boxplot", colour = drv)

?qplot

qplot(mpg, wt, data = mtcars)
qplot(mpg, wt, data = mtcars, colour = cyl)
qplot(mpg, wt, data = mtcars, size = cyl)
qplot(mpg, wt, data = mtcars, facets = vs ~ am)