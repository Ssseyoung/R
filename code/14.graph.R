# 막대 그래프
library(readxl)
path <- "C:/LSY/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)
View(ex_data)

# 빈도 분포를 구하는 함수
# table() : 데이터 세트의 빈도 분포를 구하는 함수
dist_area <- table(ex_data$AREA)

# 막대 그래프
barplot(dist_area)

# 막대 그래프 옵션
barplot(dist_area, ylim=c(0,10)
                 , main="지역별 인구수"
                 , xlab="지역"
                 , ylab="인구수")

# 막대 그래프 색상
barplot(dist_area, col=c("pink","lightblue","lightyellow"))


# 상자 그림
library(readxl)
path <- "C:/LSY/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)
print(ex_data)

# 상자 그림 그래프 출력
boxplot(ex_data$Y21_CNT, ex_data$Y20_CNT)

# 상자 그림 옵션
boxplot(ex_data$Y21_CNT, ex_data$Y20_CNT
        , ylim=c(0,60)
        , main="20~21년 이용건 수"
        , names=c("21년 건 수", "20년 건 수")
        , col=c('pink','lightblue'))

# 히스토그램
hist(ex_data$AGE, main="나이"
                , xlim=c(0,60)
                , ylim=c(0,10)
                , breaks=5)
                # breaks : 구간의 경계 개수 지정

# 파이 차트
library(readxl)
path <- "C:/LSY/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)

dist_area <- table(ex_data$AREA)

# 백분율(%) 구하기
names <- c('경기','서울','제주')
values <- round(dist_area / sum(dist_area)*100)
labels <- paste0(names, "(",values,"%)")
pie(dist_area
    ,col=c('pink','lightblue','lightyellow')
    ,border=c('red','blue','yellow')
    ,cex=2
    ,main='지역별 인구수'
    ,labels=labels
    ,clockwise=T
    ,init.angle=90)
    # clockwise=T, 기본각도=90
    # clockwise=F, 기본각도=0
    # init.angle은 반시계로 회전


# 줄기 잎 그림
x <- c(15, 17, 22, 26, 35, 36, 42, 46, 51, 54, 59)
stem(x)
# scale=1 이 기본값

stem(x, scale=2)
# scale : 줄기의 개수; 데이터 나누는 구간
# 10~14 | 15~19
# 20~24 | 25~29
# ...


# 산점도 그래프
iris
# 꽃받침의 세로 길이
x <- iris$Sepal.Length

# 꽃잎의 가로 길이
y <- iris$Petal.Width

plot(x=x, y=y
     , xlab="꽃받침 세로"
     , ylab="꽃잎 가로"
     , main="꽃받침과 꽃잎 길이의 상관관계"
     , sub="꽃받침이 길면 꽃잎이 길어진다")

# 산점도 행렬
pairs(iris)

# psych 패키지로 산점도 행렬
install.packages("psych")
library(psych)
pairs.panels(iris)

# 변수의 분포,
# 히스토그램, 밀도 그래프(타원), 산점도, 곡선 그래프
# 상관 관계, 대칭성, 이상치 파악





























