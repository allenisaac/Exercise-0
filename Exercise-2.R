#Number 1
A <- matrix(c(1, 5, -2, 1, 2, -1, 3, 6, -3), nrow = 3, ncol = 3)
A %*% A %*% A
A[row(A), 3] <- A[row(A), 1] + A[row(A), 2]
A

#Number 2
B <- matrix(c(rep(10, times = 15), rep(-10, times = 15), rep(10, times = 15)), nrow = 15, ncol = 3)
B
t(B)%*%B

#Number 3
matE <- matrix(0, nrow = 6, ncol = 6)
mat_3 <- abs(row(matE) - col(matE))
mat_3[mat_3 > 1] <- 0
mat_3

#Number 4
mat_4 <- outer(0:4, 0:4, "+") 
mat_4

#Number 5
mat_5a <- outer(0:4, 0:4, "+") 
mat_5a[mat_5a > 4] <- mat_5a[mat_5a > 4] - 5
mat_5a

mat_5b <- outer(0:9, 0:9, "+") 
mat_5b[mat_5b > 9] <- mat_5b[mat_5b > 9] - 10
mat_5b

mat_5c <- outer(0:8, 9:1, "+")
mat_5c[mat_5c > 8] <- mat_5c[mat_5c > 8] - 9
mat_5c

#Number 6
mat_6A <- matrix(0, nrow = 5, ncol = 5)
mat_6A <- row(mat_6A) - col(mat_6A) + 1
mat_6A[mat_6A < 1] <- abs(mat_6A[mat_6A < 1] - 2)
y <- floor(c(7, -1, -3, 5, 17))
q_6 <- solve(mat_6A, y)
q_6

#Number 7
set.seed(75)
aMat <- matrix( sample(10, size=60, replace=T), nr=6)
q_7a_1 <- sum(aMat[1, ] > 4)
q_7a_2 <- sum(aMat[2, ] > 4)
q_7a_3 <- sum(aMat[3, ] > 4)
q_7a_4 <- sum(aMat[4, ] > 4)
q_7a_5 <- sum(aMat[5, ] > 4)
q_7a_6 <- sum(aMat[6, ] > 4)
q_7b <- match(2, rowSums(aMat== 7, na.rm=TRUE))
q_7b

x <- outer(colSums(aMat), colSums(aMat), "+")
mat_7c <- which(x > 75, arr.ind = TRUE)
colnames(mat_7c) <- c("col 1", "col 2")
mat_7c

x[row(x) >= col(x)] <- 0
mat_7c_rdct <- which(x > 75, arr.ind = TRUE)
colnames(mat_7c_rdct) <- c("col 1", "col 2")
mat_7c_rdct

#Number 8
mat8 <- matrix(1:100, 20)
j <- 1:ncol(mat8)
i <- 1:nrow(mat8)
q_8a <- sum(outer(i ^ 4, 3 + j, "/"))
q_8a

q_8b <- sum(row(mat8) ^ 4 / (3 + (row(mat8) * col(mat8))))
q_8b

mat8c <- matrix(1:100, 10)
mat8c <- row(mat8c) ^ 4 / (3 + (row(mat8c) * col(mat8c)))
mat8c[col(mat8c) > row(mat8c)] <- 0
q_8c <- sum(mat8c)
q_8c