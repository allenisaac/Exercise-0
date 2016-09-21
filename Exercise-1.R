#Number 1
vec_1a <- seq(1, 20, by = 1)
vec_1a
vec_1b <- c(20:1)
vec_1b
vec_1c <- c(vec_1a, vec_1b[2:20])
vec_1c
tmp <- c(4, 6, 3)
tmp
vec_1e <- rep(tmp, times = 10)
vec_1e
vec_1f <- rep(tmp, length.out = 31)
vec_1f
vec_1g <- c(rep(tmp[1], times = 10), rep(tmp[2], times = 20, rep(tmp[3], times = 30)))
vec_1g

#Number 2
x <- seq(3, 6, by = 0.1)
vec_2 <- exp(x) * cos(x)
vec_2
plot(vec_2, ylim = range(vec_2, exp(x), cos(x)), col = "black", type = "l")
points(exp(x), col = "blue", type = "l")
points(cos(x), col = "red", type = "l")

#Number 3
x1 <- rep(c(0.1, 0.2), times = 12)
x2 <- c(3, (rep(c(-2, 5), times = 12)))
x3 <- cumsum(x2)
vec_3a <- x1 ^ x3[1:24]
vec_3a

x4 <- seq(1, 25, by = 1)
vec_3b <- (2 ^ x4) / x4
vec_3b

#Number 4
x5 <- seq(10, 100, by = 1)
q_4a <- sum((x5 ^ 3) + (4 * (x5 ^ 2)))
q_4a

x6 <- seq(1, 25, by = 1)
q_4b <- sum(((2 ^ x6) / x6) + ((3 ^ x6) / (x6 ^ 2)))
q_4b

#Number 5
x7 <- seq(1, 30, by = 1)
vec_5a <- paste("label", x7)
vec_5a

vec_5b <- paste("fn", x7, sep = "")
vec_5b

#Number 6
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
x8 <- seq(1, 249, by = 1)
vec_6a <- yVec[x8 + 1] - xVec[x8]
plot(vec_6a)

vec_6b <- sin(yVec[x8]) / cos(xVec[x8 + 1])
plot(vec_6b)

x9 <- x8[1:248]
vec_6c <- xVec[x9] + 2 * xVec[x9 + 1] - xVec[x9 + 2]

q_6d <- sum((exp(-xVec[x8 + 1])) / (xVec[x8] + 10))
q_6d

#Number 7
vec_7a <- yVec[yVec > 600]
x10 <- (yVec > 600) * 1
x10[x10 == 0] <- NA
plot(yVec[yVec <= 600], ylim = range(yVec))
points(yVec * x10, col = "green")

vec_7b <- which(yVec %in% c(601:999))
vec_7b
vec_7c <- xVec[vec_7b]
vec_7c

vec_7d <- abs(xVec - mean(xVec)) ^ 2
plot(vec_7d, ylim = range(vec_7d, xVec), col = "red")
points(xVec, col = "black")

q_7e <- length(yVec[yVec > max(yVec) - 200])
q_7f <- length(xVec[xVec%%2 == 0])
vec_7g <- xVec[order(yVec)]
plot(vec_7g)

x11 <- seq(1, 249, by = 3)
vec_7h <- yVec[x11]
plot(vec_7h)

#Number 8
x12 <- seq(0, 38, by = 2)
x13 <- c(1, ((2 + x12) / (3 + x12)))
q_8 <- sum(cumprod(x13))
q_8

