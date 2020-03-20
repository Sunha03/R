#ggplot2 패키지에서 제공되는 mpg 데이터를 분석
#### step1. mpg를 dataframe로 변경 ####
install.packages("ggplot2")
library("ggplot2")

mpg
mpg <- data.frame(mpg)
mpg

#### step2. mpg의 정보 출력 ####
#행 개수, 열 개수, 위에서 10개, 끝에서 10개 출력
nrow(mpg)
ncol(mpg)
head(mpg, n = 10)
tail(mpg, 10)

#### step3. mpg의 컬럼명 변경 ####
#cty >> city, hwy >> highway
install.packages("dplyr")
library("dplyr")
mpg <- rename(mpg, city = cty)
mpg <- rename(mpg, highway = hwy)
mpg

#### step4. 파생변수 생성 ####
#total 컬럼 추가 > cty와 hwy의 합
#avg 컬럼 추가 > cty와 hwy의 평균
mpg$total <- as.numeric(mpg$city + mpg$highway)
mpg$avg <- as.numeric(mpg$total / 2)
mpg

#### step5. 생성된 total을 가지고 요약정보 확인 ####
str(mpg)

#### step6-1. info 컬럼 추가 ####
#total 값을 이용해서 평가 - 30 이상이면 pass, 아니면 fail
mpg[,"info"] <- ifelse(test = mpg$total >= 30,
                       yes = "pass",
                       no = "fail")
mpg

#### step6-2. grade 컬럼 추가 ####
#total 값을 이용해서 평가 - 40 이상이면 A, 35 이상이면 B, 30 이상이면 C, 나머지 D
mpg[,"info"] <- ifelse(test = mpg$total >= 40,
                       yes = "A",
                       no = ifelse(test = mpg$total >= 35,
                             yes = "B",
                             no = ifelse(test = mpg$total >= 30,
                                   yes = "C",
                                   no = "D")))
mpg
