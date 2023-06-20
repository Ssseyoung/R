# dplyr 패키지
install.packages("dplyr")
library(dplyr)

# mtcars : 자동차 정보 내장 데이터 시트
# 데이터 추출
# cyl : 기통, mpg : 연비, am : 구분, gear : 기어
result <- dplyr::filter(mtcars, cyl >=6)
View(result)

result <- select(mtcars, mpg, am, gear)
head(result)     # 위쪽 6개 부분만
print(result)
View(result)

# 데이터 정렬
# wt : 무게
result <- arrange(mtcars, wt, desc(cyl))
head(result)
View(result)

# 데이터 추가
result <- head(mutate(mtcars, year="2023"))
View(result)

# 연비를 기준으로 오름차순
# 연비의 순위를 추가하시오
result1 <- arrange(mtcars, desc(mpg))
result2 <- mutate(result1, rank=rank(desc(mpg)))
View(result2)
  # rank(변수) : 해당 변수의 순위를 반환
  # 기본 정렬 기준 : 오름차순 -> 낮은 순으로 순위 매김

# 중복 데이터 제거
distinct(mtcars, cyl)

distinct(mtcars, gear)

distinct(mtcars, cyl, gear)


# 데이터 요약

summarise(mtcars, 평균=mean(cyl), 최소값=min(cyl), 최대값=max(cyl))

# 그룹별로 데이터 요약

group_data <- group_by(mtcars, gear)
summarise(group_data, n())
summarise(group_data, max(cyl))
# n()          : 데이터 개수 반환
# n_distinct() : 중복 재거된 데이터 개수 반환

group_data <- group_by(mtcars, cyl)
# 자동차 기통별 차량 대수
summarise(group_data, n())
# 자동차 기통별 중복제가한 기어 개수
summarise(group_data, n_distinct(gear))


# 샘플 10개 추출하기
result <- sample_n(mtcars, 10)
View(result)

# 샘플 20% 추출하기
result <- sample_frac(mtcars, 0.2)
View(result)

# 파이프 연산자
# 그룹별 요약
library(dplyr)
group_cy1 <- group_by(mtcars, cyl)
summarise(group_cyl, n())

# 파이프 연산자 사용
group_by(mtcars, cyl) %>% summarise(n())

# 주로 데이터 처리 후, 정렬을 이어서 할 때 사용
mp_rank <- mutate(mtcars, rank=rank(mpg))
arrange(mp_rank, mp_rank)

# 파이프 연산자
mutate(mtcars, rank=rank(mpg)) %>% arrange(rank)


# 필요한 데이터 추출하기
library(readxl)
path <- "C:/LSY/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)
names(ex_data)

# 선택한 데이터만 추출
ex_data %>% select(ID,AGE,AREA)

# 조건에 맞는 데이터만 추출
ex_data %>% filter(AREA == '서울')

# 조건 지정 및 변수 선택
ex_data %>% filter(AREA == '서울') %>% select(ID,AGE,AREA)

# + 정렬
ex_data %>% filter(AREA == '서울') %>% select(ID,AGE,AREA) %>% arrange(AGE)

# 요약하기
ex_data %>% summarise("21년 이용합계"=sum(Y21_CNT))

ex_data %>% group_by(AREA) %>% summarise("21년 이용합계"=sum(Y21_CNT))















































