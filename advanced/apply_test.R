data(package = "MASS") #R 내부의 샘플 데이터 셋을 가져오기
library(MASS)
data("Boston")
head(Boston)
colnames(Boston)
t(colnames(Boston))
t(t(colnames(Boston)))
df <- head(Boston[,1:7])
df

#apply : 반복 작업 함수를 지원
#        (margin > 1 : 행 방향, 2 : 열 방향)
df[,"total"] <- round(apply(X = df, MARGIN = 1, FUN = "sum"), 4)  #합
df
df[,"avg"] <- round(apply(X = df, MARGIN = 1, FUN = "mean"), 4) #평균
df

#sapply : apply의 margin 속성을 2로 정의
sapply(X = df, FUN = "mean")
sapply(X = df, FUN = "class")
t(t(sapply(X = df, FUN = "class")))

