#data.table > dataframe보다 강력
install.packages("data.table")
library("data.table")

df <- data.frame(mydata1=1:5,
                 mydata2=letters[1:5],
                 mydata3=c("멀캠","android","@한글%$@#","test","java"))
df
####파일write####
write.csv(df, "encoding_test.csv", row.names = FALSE)
write.csv(df, "encoding_test_euckr.csv", row.names = FALSE, fileEncoding="euc-kr")
write.csv(df, "encoding_test_cp949.csv", row.names = FALSE, fileEncoding="cp949")
write.csv(df, "encoding_test_utf8.csv", row.names = FALSE, fileEncoding="utf8")



####깨진 파일 처리하기####
read.csv("encoding_test_utf8.csv")
readLines("encoding_test_utf8.csv")
readLines("encoding_test_utf8.csv", encoding = "UTF-8")


#data.table > dataframe보다 강력
dftable <- fread("encoding_test_utf8.csv")
head(dftable)

#인코딩 함수
Encoding(dftable$mydata3) = "UTF-8"
head(dftable)
mydata <- c("java","spring","bigdata","android")
qplot(mydata)
qplot(data = mpg, x = hwy)
qplot(data = mpg, x = hwy, y = drv)
qplot(data = mpg, x = drv, y = hwy, geom = "line")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)
