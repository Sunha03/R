set.seed(122)  #1222는 key

a <- sample(1:10, size = 5, replace = FALSE)
a

#if문의 역할을 하는 함수 - ifelse
set.seed(1221)
ifdf <- data.frame(mynum = 1:6,
                   myval=sample(c("spring","bigdata", "android"),
                                size = 6,
                                replace = TRUE))
ifdf

#myval의 값이 spring이면 "프로젝트 완료", bigdata면 "예정"
for(i in 1:nrow(ifdf)) {
  if(ifdf[i,"myval"] == "spring") {
    ifdf[i,"info"] <- "프로젝트 완료"
  } else {
    ifdf[i,"info"] <- "예정"
  }
}
ifdf

#함수를 이용해서 작업 > info2
ifdf[,"info2"] <- ifelse(test = ifdf$myval == "spring",
                         yes = "쉬움",
                         no = "예정")
ifdf

#조건이 2개 이상인 경우 처리
ifdf[,"info3"] <- ifelse(test = ifdf$myval == "spring",
                         yes = "예정",
                         no = ifelse(test = ifdf$myval == "bigdata",
                                     yes = "머신 셋팅",
                                     no = "device 셋팅 완료"))
ifdf

ifdf[,"info4"] <- "쉬움"
#ifdf[,"info4"] <- ifelse(test = ifdf$myval == "bigdata",
#                         yes = "머신 셋팅",
#                         no = "device 셋팅 완료")
