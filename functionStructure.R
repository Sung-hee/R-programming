## 13. 함수의 구조 및 작성
## 13.1 함수의 구조

#함수명 <- function(인자1, 인자2 = 기본값) {
#  동작할 내용
#}

add_one <- function(x) {
  x <- x + 1
  return (x)
}

add_one(10)

# 보통 함수에는 사용할 데이터와 동작의 세부 사항을 결정하는 설정들을 입력 인자로 사용함

add_some <- function(x, some = 1) {
  x <- x + some
  return (x)
}

add_some(10)
add_some(10, some = 3)

args(add_some)

# 인자 없이 출력만 있는 함수도 가능
one_to_ten <- function() {
  ot <- 1:10
  return (ot)
}
one_to_ten()

getwd()

# 전역과 지역
# 함수 내부에서 할당한 데이터는 외부에서 사용할 수 없음
one_to_ten_ot <- function() {
  ot <- 1:10
  return (ot)
}
ot
one_to_ten_ot()

# 외부의 데이터를 함수 내부에서 사용할 수는 있음
# 만약 개인적으로 함수를 작성한다면 절대 권장하지 않음
a <- 1
add_a <- function(x) {
  return (x + a)
}

# 인자를 통해 전달하는 것을 추천
# 인자로 전달한 데이터는 인자 이름으로 함수 내부에서만 사용할 수 있음
add_b <- function(x, b) {
  return (x + b)
}
b
add_b(13, 4)
k <- 8
add_b(13, k)
