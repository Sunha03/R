#csv는 기본 패키지로 사용 가능
#csv 읽기
mdf <- read.csv("csv_exam.csv")
mdf
mdf[2,]

#dataframe에서 조건에 만족하는 데이터 조회
m <- matrix(1:20, ncol = 4)
m
d <- data.frame(m)
d
myresult <- d[d$X3 >= 13,]
myresult

#조건에 만족하는 데이터를 result.csv로 저장
write.csv(myresult, file = "result.csv")

#[실습]
mydata <- read.csv("csv_exam.csv")
mydata
mydataResult <- mydata[mydata$science >= 80,]
mydataResult
mydataResult$mytotal <- as.numeric(mydataResult$math + mydataResult$english + mydataResult$science)
mydataResult
mydataResult$myavg <- as.numeric(mydataResult$mytotal / 3)
mydataResult
write.csv(mydataResult, file <- "result.csv")


table <- data.frame(inputcsv)
table
science80 <- table[table$science >= 80.0,]
science80
for(i in science80) {
  mytotal <- science80$math + science80$english + science80$science
  myavg <- mytotal/3
  restable <- cbind(science80[i,], mytotal, myavg)
}
restable




