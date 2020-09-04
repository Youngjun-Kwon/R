exam %>% arrange(math) #오름차순
exam %>% arrange(desc(math)) #내림차순

exam %>% arrange(class, math)
exam %>% arrange(class, desc(math))

#문제
#Q1
audi <- mpg %>% filter(manufacturer == "audi")

head(audi)

audi %>% 
  arrange(desc(hwy)) %>% 
  head(5)
# 이렇게 줄여서 쓰는게 좋다!
mpg %>% 
  filter(manufacturer == "audi") %>% 
  arrange(desc(hwy)) %>% 
  head(5)
