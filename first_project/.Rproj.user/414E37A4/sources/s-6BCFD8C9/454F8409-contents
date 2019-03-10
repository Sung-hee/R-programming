## 11. 속성을 가지는 확장 백터
## 11.1 데이터에 속성을 추가
# 속성(attribute) 이란 메타 데이터로써 '데이터의 데이터'란 뜻이다
x <- 1:10
attr(x, "test")
attr(x, "test") <- "ok!"
attr(x, "done") <- "Not yet!"
attributes(x)

# R에서 많이 사용하는 속성은 아래와 같다
# names
# class
# 많이 사용하기 때문에 각 속성을 확인하는 함수도 제공한다.

mul_ln <- list(a = 1, b = 2, c = 3, d = list(3,4))
attributes(mul_ln)
names(mul_ln)

df_ln <- data.frame(a = 1, b = 2, c = 3)
attributes(df_ln)
class(df_ln)

## 11.2 확장 백터란
# 기존의 백터에 속성을 추가해 사용하는 특별한 데이터의 종류
## 11.2.1 요인형(factor)
fct <- factor(c("a", "b", "c"))
fct
typeof(fct)
attributes(fct)

fct <- factor(c("a", "b", "c", "a", "a"))
str(fct)

# 요인형에는 levels가 있다
levels(fct)

# 강제형변환
typeof(fct)
as.numeric(fct)
typeof(fct)
as.character(fct)

fct_m <- factor(c(4,8,3))
as.numeric(fct_m)
str(fct_m)
as.character(fct_m)
fct_m

levels(fct_m)

## 11.2.2 메트릭스(matrix)
# 매트릭스는 2차원 원자 벡터
# 원자 벡터이기 때문에 모든 데이터가 같은 자료형
# 행과 열의 길이를 속성으로 가짐으로써 2차원 데이터로 동작함
nv1 <- 1:10
mtrx <- matrix(nv1, nrow = 5)
typeof(mtrx)
attributes(mtrx)

dim(mtrx)
length(mtrx)

# 행과 열의 방향으로 데이터의 결합 함수를 지원
nv2 <- 10:6
str(nv2)
cbind(mtrx, nv2)
nv3 <- 1:2
str(nv3)
rbind(mtrx, nv3)

mtrx_n <- cbind(mtrx, nv2)
nv4 <- 1:3
str(mtrx_n)
mtrx_n
rbind(mtrx_n, nv4)

# 대괄호 내에 쉼표로 구분하여 인덱싱을 지원
mtrx_n[1:3, 1:2]

mtrx_n[1:2,]
mtrx_n[]
mtrx_n[,-3]
mtrx_n[,c(-3,1)]
mtrx_n[,3]

mtrx_n[,"nv2"]

mtrx_n
mtrx_n[6]
mtrx_n[12]

# byrow 옵션을 통해 데이터의 방향을 바꿀 수 있음
nv1 <- 1:10
matrix(nv1, nrow = 5)
matrix(nv1, nrow = 5, byrow = T)
args(matrix)

# 길이가 다른 데이터와의 연산을 재활용 규칙을 이용해 지원
mtrx_n * 10
mtrx_n
mtrx_n + 10

mtrx_n + c(1,4,8,3,2)
mtrx_n
mtrx_n + c(3,9,1)

## 11.2.3 데이터프레임(data.frame)
# 데이터프레임은 2차원 테이블 형태의 자료구조로써 리스트의 확장
# 컬럼별로 다양한 데이터 종류를 가질 수 있다 라고 표현
lgl M- c(T,F,T,T)
lgl <- c(T,F,T,T)
chr <- c("영수", "영미", "철수", "철이")
num <- c(15,14,16,13)
lgl
chr
str(chr)
num

school <- data.frame(이름 = chr, 성별 = lgl, 나이 = num)
str(school)
school <- data.frame(이름 = chr, 성별 = lgl, 나이 = num, stringsAsFactors = F)
str(school)
args(data.frame)

typeof(school)
attributes(school)
names(school)
dim(school)
length(school)

# 리스트와 다른점
# 행과 열을 이루는 2차원 데이터이기 때문에 주머니내의 데이터 길이가 같아야함
lgl <- c (T,F,T,T)
chr <- c("영수", "영미", "철수", "철이")
num <- c(15,14,16,13,18)
school2 <- data.frame(이름 = chr, 성별 = lgl, 나이 = num)

# 메트릭스 같이 cbind(), rbind() 함수를 지원
몸무게 <- c(35,38,40,25)
cbind(school, 몸무게)

전학생 <- data.frame(이름 = "영희", 성별 = F, 나이 = 18)
rbind(school, 전학생)

# 메트릭스를 데이터프레임으로, 혹은 반대로 만들 수 있음
as.matrix(school)
mtrx <- matrix(1:10, nrow = 5)
as.data.frame(mtrx)
mtrx

# 리스트와 같은 방식으로 일부의 데이터를 사용할 수 있음
school[,1]
school[,c(1,2)]
school[,-1]
school[,c("성별","이름")]

school[["이름"]]
school$이름
# 컬럼 추가
school$몸무게 <- c(35, 38, 40, 25)
school

# 컬럼 삭제
school$몸무게 <- NULL
school
