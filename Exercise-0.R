#arithmetic
a <- 2
b <- 50
c <- 3
a + b
b/a
50%%3
sin(0)
cos(0)
sin45 <- sin(pi/4)
4*asin(sin45)

#vectors
a_vec <- c(3, 50, 5, 6, 10, 40, 20, 2, 100, 30, 25, 80)
length(a_vec)
sum(a_vec)
cumsum(a_vec)
summary(a_vec)
var(a_vec)
str(a_vec)
is.vector(a_vec)
d <- a_vec[5]
a_vec
length(d)
is.vector(d)

#random vectors
random_vec <- runif(20)
length(random_vec)
random_vec
random_vec_big <- runif(1000)
length(random_vec_big)
head(random_vec_big)
head(random_vec_big, 20)

options(digits = 2)
tail(random_vec_big)

#seeded random numbers sets start
set.seed(2)
r <- runif(30)
head(r, 10)
r1 <- runif(20)
head(r1, 10)
set.seed(2)
s <- runif(10)
s
options(digits = 4)

#graphics
head(r)
head(s)
plot(r)
hist(r)
hist(random_vec_big)
boxplot(a_vec)

#matrices
A <- matrix(data = floor(30 * runif(16)), nrow = 4)
A
dim(A)
b <- floor(20 * runif(dim(A)[2]))
b
x <- solve(A, b)
x
b1 <- A%*%x
b1
b2 <- as.vector(A%*%x)
b2

#vector products
e <- floor(20 * runif(4))
f <- floor(20 * runif(4))
e
f
crossprod(e,f)
sum(e*f)
t(e)%*%f
outer(e, f, "*")
outer(e, f, ">")
outer(e, f, ">") * 1
