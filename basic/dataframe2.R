#dataframe 만들기
#1, matrix를 dataframe으로 변환
#2. 벡터를 여러 개 만들어서 dataframe을 작성
eng <- c(100,99,90)
math <- c(100,99,100)
mydf1 <- data.frame(eng, math)
mydf1
mean(mydf1$eng)
mean(mydf1$math)
#3.dataframe 직접 정의
mydf2 <- data.frame(eng=c(100,100,100),
                    m = c(90,90,90))
mydf2


#생성 완료 + 사용중인 matrix, dataframe의 행, 열을 변경
m <- matrix(1:15, ncol = 3, byrow = T)
m
t(m)
m

d <- data.frame(m)
d
d <- t(d)
d

#[실습]
product <- c("사과", "딸기", "수박")
price <- c(1800, 1500, 3000)
count <- c(24, 38, 13)
fruit <- data.frame(product, price, count)
fruit
avg_price <- mean(fruit$price)
avg_price
avg_count <- mean(fruit$count)
avg_count
