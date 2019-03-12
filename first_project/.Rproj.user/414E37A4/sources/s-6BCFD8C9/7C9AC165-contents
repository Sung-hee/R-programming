## 15. 반복문 for
# 반복문의 기본

for (i in 1:10) {
  print(i)
}

chr_v <- c("a", "b", "c", "d", "e", "f")
for (i in chr_v) {
  print(i)
}

# next는 다음 반복으로 넘어가라는 뜻
for (i in 1:10) {
  if (i == 4) {
    next
  }
  print(i)
}

# break는 이제 그만
for (i in 1:10) {
  if (i == 4) {
    break
  }
  print(i)
}  

## 16. 반복문 작성 예시
# 데이터 프레임과 함께 사용

df <- data.frame(a = c("a", "b", "c", "d", "e", "f"), b = 1:6, stringsAsFactors = F)

for (i in 1:nrow(df)) {
  print(df[i, ])
}

# 데이터를 추가하고 싶을 때
df <- data.frame(a = c("a", "b", "c"), b = 1:3, stringsAsFactors = F)
df
add_a <- c("d", "e", "f", "g")
add_b <- 4:7
for (i in 1:length(add_a)) {
  print("for start")
  tem <- data.frame(a = add_a[i], b = add_b[i], stringsAsFactors = F)
  df <- rbind(df, tem)
}
df

# 파일 저장
df <- data.frame(a = c("a", "b", "c", "d", "e", "f"),
                 b = 1:6, 
                 stringsAsFactors = F) 
for (i in 1:nrow(df)) {
  file_name <- paste0(df[i, "a"], ".csv")
  write.csv(df[i, ], file_name)
}
