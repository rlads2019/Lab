vec <- c("謝", "老師", "好", "帥", "><")

for (i in seq_along(vec)) {
    print(vec[i])
    
    if (i == length(vec)) {
        print('Really?')
        print('我要去加簽')
    }
}