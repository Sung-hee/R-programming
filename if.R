## 14. 조건문 if
## 14.1 조건문의 구조

# 조건 <- 논리형 스칼라
#if (조건) {
#  조건이 맞을때
#} else {
#  조건이 맞지 않을떄
#}

x <- 10
if (x > 5) {
  x <- x + 3
} else {
  x <- x - 3
}

x <- 3
if (x > 5) {
  x <- x + 3
} else {
  x <- x - 3
}
x

# if 만 작성할 수 있음

# 관계 연산과 논리 연산을 통해 조건을 판단함
# if 내의 조건은 1개만 가능
# all(), any() 함수와 ||, && 연산자가 유용함

if (all(c(T,T,T))) {
  print("all True!")
}

if (any(c(F,F,T))) {
  print("any True!")
}

if (c(T,T,T) || c(F,F,F,F)) {
  print("|| works!")
}
