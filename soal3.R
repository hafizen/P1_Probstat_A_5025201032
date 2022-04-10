#Soal 3

#soal 3.a

lambda = 4.5
x = 6
dpois(x, lambda)

#soal 3.b
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Number of babies born per period',
       y = 'Proportion',
       title = '365 simulated births in a hospital with Pois(lambda = 4.5)') +
  theme_bw()

#soal 3.c

babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#dapat dilihat bahwa hasil simulasi nya sekitar 11.5% (berdasarkan perhitungan diatas)
#sedangkan nilai exact nya yaitu 12,8%
#yang artinya sesuai karena nilai simulasi mendekati nilai exact

#Soal 3.d

rataan = lambda
rataan

varian = lambda
varian