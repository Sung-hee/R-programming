## 16. 반복문 작성
# 데이터 프레임과 함께 사용

df <- data.frame(a = c("a", "b", "c", "d", "e", "f"),
                 b = 1:6,
                 stringsAsFactors = F)

for ( i in 1:nrow(df)) {
  print(df[i, "b"])
}

# 데이터를 추가하고 싶을 때
df <- data.frame(a = c("a", "b", "c"), 
                 b = 1:3,
                 stringsAsFactors = F)
df
add_a <- c("d", "e", "f", "g")
add_b <- 4:7
for (i in 1:length(add_a)) {
  print("for start")
  tem <- data.frame(a = add_a[i], b = add_b[i], stringsAsFactors = F)
  df <- rbind(df, tem)
  print(df)
}
df

# 파일 저장

df <- data.frame(a = c("a", "b", "c", "d", "e", "f"),
                 b = 1:6,
                 stringsAsFactors = F)
df
add_a <- c("d", "e", "f", "g")

for (i in 1:nrow(df)) {
  file_name <- paste0(df[i, "a"], ".csv")
  print(file_name)
  write.csv(df[i, ], file_name)
}
