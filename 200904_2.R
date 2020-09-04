exam %>% select(math)
exam %>% select(english)
exam %>% select(class, math, english)
exam %>% select(-math)
exam %>% select(-math, -english)

exam %>% 
  filter(class == 1) %>% 
  select(english)

exam %>% 
  select(id, math) %>% 
  head

#문제
#Q1
mpg_new <- mpg %>% select(class, cty)
head(mpg_new)
#Q2
suv <- mpg_new %>% filter(class == "suv")
head(suv)

compact <- mpg_new %>% filter(class == "compact")
head(compact)

mean(suv$cty)
mean(compact$cty)
