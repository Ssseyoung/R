# 데이터 구조 확인
str(iris)


# 데이터 세트의 행, 열 확인
ncol(iris)
nrow(iris)
dim(iris)


# 데이터 세트 컬럼명 확인
ls(iris)

# 데이터 앞부분 확인
head(iris, n = 3)

# 데이터 뒷부분 확인
tail(iris, n = 3)



# 평균
mean(iris$Sepal.Length)       # 5.843333
mean(iris$Petal.Length)       # 3.758

# 중앙값
median(iris$Sepal.Length)     # 5.8
median(iris$Petal.Length)     # 4.35

# 최솟값
min(iris$Sepal.Length)        # 4.3

# 최댓값
max(iris$Sepal.Length)        # 7.9

# 범위
range(iris$Sepal.Length)      # 4.3 7.9

# 사분위수                    # 0%   25%  50%  75%  100% 
quantile(iris$Sepal.Length)   # 4.3  5.1  5.8  6.4  7.9 


# 분산, 표준편차
var(iris$Sepal.Length)        # 0.6856935 - 데이터가 평균으로부터 퍼진 정도 (클수록 평균으로부터 멀리 퍼짐)
sd(iris$Sepal.Length)         # 0.8280661 - 데이터가 퍼진 정도 (클수록 넓게 퍼짐)

# 첨도, 왜도
install.packages("psych")
library(psych)

kurtosi(iris$Sepal.Length)    # 첨도 : -0.6058125

# 꽃받침의 왜도
skew(iris$Sepal.Length)       # 왜도 : 0.3086407
skew(iris$Sepal.Width)        # 왜도 : 0.3126147

# 꽃잎의 왜도
skew(iris$Petal.Length)       # 왜도 : -0.2694109
skew(iris$Petal.Width)        # 왜도 : -0.1009166

# 왜도
# i) 왜도     > 0
#    평균     > 중앙값 
#    5.843333 > 5.8

# ii) 왜도     < 0
#     평균     < 중앙값 
#     3.758    < 4.35



# 빈도 분석
install.packages("descr")
library(descr)

freq_data <- freq(iris$Sepal.Length)
freq_data

# 빈도 분석2
library(readxl)
path <- "C:/LSY/R/code/source/"
file <- paste0(path, "sample1.xlsx")
ex_data <- read_excel(file)
ex_data

freq(ex_data$AREA
     , ylim=c(0,10)
     , xlab="지역"
     , ylab="빈도"
     , main="지역별 인구수")

































