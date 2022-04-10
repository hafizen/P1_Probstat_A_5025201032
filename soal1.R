#Soal 1

#Soal 1.a
x = 3
p = 0.20

dgeom(x ,p)

#Soal 1.b
n = 10000

mean(rgeom(n ,p) == x)

#soal 1.c
#Hasil yang diperoleh dari soal 1.a merupakan nilai eksaknya yaitu `0.1024`
#Sedangkan perolehan pada soal 1.b merupakan hasil perolehan simulasi dengan mengambil 10000 data random untuk kasus yang serupa dengan soal 1.a
#Kesimpulan yang dapat diambil adalah hasil yang didapatkan dari percobaan random adalah dekat dengan nilai eksaknya.

#soal 1.d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(

    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")

#soal 1.e
#
mean = 1 / p
mean

#
variance = (1-p) / p^2
variance



