# Gaussian white noise を生成
white_noise <- rnorm(400)
plot(white_noise, type = "l")

# ランダムウォークのシミュレーション
t <- 400
plot(c(0, t), c(-5, 5) * sqrt(t), type = "n", lwd = 3)
for (i in 2:20) {
  lines(seq(0, t, 1),
    c(0, cumsum(rnorm(t, 0, 1))),
    col = i
  )
}
curve(2 * sqrt(x), add = TRUE, lty = 2)
curve(-2 * sqrt(x), add = TRUE, lty = 2)

# HAKUSAN のプロット
library(TSSS)
data(HAKUSAN)
plot(HAKUSAN)
