library(TSSS)

data(HAKUSAN)
hakusan1 <- HAKUSAN[, 1]
plot(hakusan1)
par(mar = c(2, 3, 2, 1) + 0.2)
crscor(HAKUSAN[, 2:4], lag = 50)

data(Sunspot)
plot(Sunspot)
unicor(Sunspot)
acf(Sunspot, lag = 50)

data(Temperature)
plot(Temperature)

data(BLSALLFOOD)
plot(BLSALLFOOD)
