exam <- read.csv("csv_exam.csv")
exam

#전체 레코드의 맨 위에서부터 정의한 개수만큼만 가져오기
head(exam, n = 5)
tail(exam, 5)   #아래쪽부터 가져오기

#실제 뷰어로 보기
View(exam)
#행의 개수
nrow(exam)
#컬럼의 개수
ncol(exam)

#행, 열의 개수 확인
dim(exam)

#타입 확인
class(exam)

#구조 확인
str(exam)

summary(exam)

exam

#컬럼의 이름을 변경 - dplyr
install.packages("dplyr")
library("dplyr")

#rename(data, 변경할 컬럼명 = 기존 컬럼명)
exam <- rename(exam, eng = english)
exam

table(exam$eng)  #빈도수
qplot(exam$end)
