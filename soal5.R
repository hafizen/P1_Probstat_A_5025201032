# Soal 5

# Soal 5.a
lambda = 3
# contoh perhitungan dengan x =100
x = 100
dexp(x,rate = lambda)

# Soal 5.b

# dengan n = 10
set.seed(1)
x1 <- rexp(10,rate = lambda)
hist(x1,
     main = "Histogram Exponensial if n = 10")

# dengan n = 100
set.seed(1)
x2 <- rexp(100,rate = lambda)
hist(x2,
     ylim = c(0,50),
     xlim = c(0,2),
     main = "Histogram Exponensial if n = 100")

# dengan n = 1000
set.seed(1)
x3 <- rexp(1000,rate = lambda)
hist(x3,
     ylim = c(0,500),
     xlim = c(0,3),
     main = "Histogram Exponensial if n = 1000")

#denga n = 10000
set.seed(1)
x4 <- rexp(10000,rate = lambda)
hist(x4,
     ylim = c(0,5000),
     xlim = c(0,4),
     main = "Histogram Exponensial if n = 10000")


# Soal 5.c
n = 100
lambda = 3
data <- rexp(n, rate = lambda)
rataan <- mean(data)
rataan

varian = var(data)
varian