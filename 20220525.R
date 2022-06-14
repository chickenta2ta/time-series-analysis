library(tseries)
x <- 0.3 * (1:100) + 3 * rnorm(100)
ts.plot(x)
ts.plot(diff(x))

x <- 3 * sin(0.1 * pi * (1:100)) + 0.4 * rnorm(100)
ts.plot(x)
ts.plot(diff(x, lag = 20))

x <- exp(0.04 * (1:100)) * (0.02 * (1:100) + rnorm(100))
ts.plot(x)
ts.plot(log(x))

library(TSSS)
x <- arima.sim(
  list(
    order = c(1, 0, 0),
    ar = 0.8
  ),
  n = 300
)
ts.plot(x)

data(WHARD)
ts.plot(WHARD)
adf.test(WHARD)

zt <- log(WHARD)
adf.test(zt)
kpss.test(zt)

dzt <- diff(zt)
kpss.test(dzt)

data(Sunspot)
arfit(log10(Sunspot), lag = 20, method = 1)

data(BLSALLFOOD)
arfit(BLSALLFOOD)

data(Sunspot)
sun_ar <- ar(Sunspot)
sun_pr <- predict(sun_ar, n.ahead = 20)
se1 <- sun_pr$pred + 2 * sun_pr$se
se2 <- sun_pr$pred - 2 * sun_pr$se
ts.plot(
  Sunspot,
  sun_pr$pred,
  se1,
  se2,
  gpars = list(
    lt = c(1, 2, 3, 3),
    xlim = c(1900, 2000),
    col = c(1, 2, 4, 4)
  )
)

data(MYE1F)
lsar.chgpt(MYE1F,
  max.arorder = 10,
  subinterval = c(200, 1000),
  candidate = c(400, 800)
)
