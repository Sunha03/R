#stringr : 정규 표현식을 실행 / 문자열 작업하는 용도
install.packages("stringr")
library("stringr")

#패턴
mytext <- "         test$uuuuu"
mytext2 <- "http://cran.ran.r-project.org/"

#전방 탐색(?=)
str_extract(mytext2, ".+(:)") #패턴과 일치하는 문자열도 같이 리턴
str_extract(mytext2, ".+(?=:)") #패턴과 일치하는 문자열 바로 전까지 리턴
str_extract(mytext, ".+(?=\\$)")

#후방 탐색(?<=)
str_extract(mytext, "(?<=\\$).*")

#문자열 관련 함수
#paste : 벡터를 연결해서 하나의 문자열로 생성
#paste0 : 여러 개를 연결
str <- c("java","hadoop","R","mongodb")
paste(str,collapse = ",")
paste0(mytext,mytext2)

#문자열 안의 특정 문자열을 replace
data <- gsub("u","",mytext)
data
str_trim(data)
