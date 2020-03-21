library("dplyr")
exam <- read.csv("csv_exam.csv")
exam
#filter : 조건 정의
exam %>% 
  filter(class == 1) %>% 
  filter(math >= 50)

#select : 추출하고 싶은 변수를 정의
exam %>% select(-math)
exam %>% select(id, math, english)

#arrange
exam %>% arrange(id)
exam %>% arrange(desc(id))
exam %>% arrange(class, english)

#mutate - 파생변수 추가하기 (원본에 없는 컬럼 추가)
exam %>% 
  mutate(total = math + english + science) %>% 
  head()

exam %>% 
  mutate(total = math + english + science,
         mean = total/3,
         info = ifelse(science>70,"통과","재시험"))

exam %>% 
  group_by(class) %>% 
  summarise(math_sum = sum(math),
            maht_mean = mean(math),
            math_median = median(math),
            math_count = n())


#[실습]
#Q1
mpg %>%
  group_by(class) %>%
  summarise(city_avg = mean(city))

#Q2
mpg %>%
  group_by(class) %>%
  summarise(city_avg = mean(city)) %>%
  arrange(desc(city_avg))

#Q3
highsort <- mpg %>%
  group_by(highway) %>%
  summarise(highway_avg = mean(highway)) %>%
  arrange(desc(highway_avg))
sort <- highsort[1:3,]
sort

#Q4
mpg[mpg$class == "compact",] %>%
  group_by(manufacturer) %>%
  summarise(car_count = n()) %>%
  arrange(desc(car_count))


