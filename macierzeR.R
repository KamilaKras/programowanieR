x <- 1:6
x

A <- matrix(x, nrow=2)
A

A <- matrix(x, ncol=2)
A

B <- matrix(x, nrow=2, byrow = TRUE)
B

C <- matrix(x, ncol=2, nrow=5)
C

#WYMIAR MACIERZY
dim(A)
dim(A) <- c(2,3)
A

#tablice

AA <- array(c(1:20), dim=c(5, 2, 2))
AA

BB <- array(c(1:20), dim=c(5,2,3))
BB

A
B
#SKLEJANIE MACIERZY
rbind(A,B)
cbind(A,B)


#indeksowanie macierzy
A[1,3]
A[1,3] <- 10
A
AA[3,1,2]

A[,1]
A[2,]
AA[1,,]
AA[,2,]
A[,1:2]
A[,c(1,3)]
A[,c(1,3)] <-100
A

A <- matrix(1:50, ncol=10)
A
A[c(1,3,4), c(5,7)]
A[-1, -c(4,5)]

A[c(T,F,T,F), ]
A[1,]>10
A[ , A[1,]>10]
A
A[A>6]

ind <- matrix(c(1,1,1,4,2,3), nrow=3, byrow=T)
ind
A[ind]

row(A)
col(A)
A[row(A)==col(A)]
A[row(A)==col(A)] < 0 

A
A[row(A)>col(A)]
A[row(A)>col(A)] < -1

diag(A)
diag(B)

diag(1:10)

E <- diag(rep(1,5))
E

A <- matrix(1:6, ncol=3)
B <- matrix(6:1, ncol=3)
A
B
A+B
A+C
A
B
A/B
A^B

D<- t(B)
D
A
A %o% D
D %o% A

outer(1:5, 1:5)
1:5 %o% 1:5
1:5 %o% 2:9

outer(1:5, 1:5, "+")
outer(1:5, 1:5, "-")

F<- matrix(c(1, -1, 0, 7, 2, 1, -5, 0, 1), ncol = 3)
F
F1<- so
lve(F)
F1 %*% F

solve(F, c(1,2,3))
A
rownames(A)
rownames(A) <- c("w1", "w2")
A
colnames(A) <- c("c1", "c2", "c3")
A
A["w1",]
A[,c("c1", "c3")]


log(A)
sin(A)
sqrt(A)

sum(A)
prod(A)
mean(A)
sd(A)

apply(A,2,mean)
apply(A,1,mean)

ll <- list(5, -7, "aa", 4:7, matrix(1:10, ncol=2))
ll
str(ll)

ll1 <- list(imie="Jan", nazwisko="Kowalski", wiek=24, waga=65, wzrost=169)
ll1
ll1[2]
str(ll1)
ll1[1:3]
ll1[[2]]

ll1[["nazwisko"]]
ll1$wiek

  ll1$wiek <- NULL
ll1  

ll1$but <- 43
ll1
names(ll1)
names(ll1)[5] <- "nr_buta"
ll1

ll1
ll2 <- list(imie="Ania", nazwisko="Nowak", wiek=22, wzrost=165)
ll2
  ll<- list(osoba1=ll1, osoba2=ll2)
ll
str(ll)

