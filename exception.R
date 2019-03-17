## 18. 에러처리
# for를 작성할 때 error가 발생하면 멈춤
# try 함수는 error가 발생하더라도 멈추지 않고 계속할 수 있게 해줌

dat <- data.frame(a = 5, b = c(1,2,3,4))

for (i in 1:4) {
  if (i == 3) {
    print(kt)
  }
  print(dat$a[i] / dat$b[i])
}

# 에러가 날 법한 코드 전체를 try() 함수로 감싸고 진행
for (i in 1:4) {
  if (i == 3) {
    try(print(kt))
  }
  print(dat$a[i] / dat$b[i])
}