## 17. apply 계열 함수
# 메트릭스 연산 apply
args(apply)

mtrx <- matrix(1:30, nrow = 5, ncol = 6)
mtrx
# 열방향
apply(mtrx, 2, sum)
# 행방향
apply(mtrx, 1, sum)
sum()
sum

# 함수를 직접 작성할 수 있음
# 이름 없이 함수를 정의하여 직접 사용한다고 해서 익명함수라고 함
apply(mtrx, 1:2, function(x) x/2)

# lapply는 리스트에 apply를 하여 결과를 리스트로 제공
l <- list(a = 1:10, b = 11:20)
l
# 평균
lapply(l, mean)
# 합
lapply(l, sum)

# 그렇다면 데이터프레임에서는 ?
# 컬럼단위 연산 결과를 리스트로 제공
df <- data.frame(a = 1:10, b = 11:20)
lapply(df, mean)
lapply(df, sum)

# 리스트 결과는 다루기 어려움
# 결과를 원자 벡터로 제공하는 버전인 sapply가 있음
df <- data.frame(a = 1:10, b = 11:20)
sapply(df, mean)
sapply(df, sum)

# 그룹별로 tapply
# 리스트별이나 컬럼 별이 아니라 그룹별로 동작하는 버전
iris
tapply(iris$Petal.Length, iris$Species, mean)
