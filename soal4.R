#Soal 4

#soal 4.a
x = 2
df = 10

dchisq(x, df)

# Soal 4.b
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Of Chi-Square")

#soal 4.C
rataan = df
rataan

varian = 2 * df
varian

