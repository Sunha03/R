#R에서 사용하는 주석문
num = 100   #num은 100
num
num <- 1000 #num 변수에 1000 저장
num
num == 1000 #num이 1000인지 비교 > TRUE/FALSE
num == 100
num != 1000

test <- "myR"
test
myR <- num
test <- myR
test
"qwertyqwertyqwerty"

result1 <- 100 #숫자형
result1
result2 <- "test" #문자형
result2

#R에서 제공되는 함수
#class 함수 > 타입확인 필요
class(result1)
class(result2)
test <- as.character(result1)
test
class(test)
test <- as.numeric(result1)
test
class(test)
