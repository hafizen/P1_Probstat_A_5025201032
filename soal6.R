# Soal 6

# Soal 6.a
n = 100
m = 50
sd = 8

data <- rnorm(100,50,8)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "l", col="green")

# Soal 6.b
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201032_Hafiz Kurniawan_Probstat_A_DNhistogram")

# Soal 6.c
var(x)