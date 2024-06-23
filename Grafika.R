x <- rnorm(50)
y <- cumsum(x)
y
plot(x)
plot(y, type="l")
plot(y, type="o")
plot(y, type="s")
plot(y, type="c", col="red", main="wykres y", xlab="czas", ylab="obs.")
plot(y, type="l", col="red", main="wykres y", xlab="czas", ylab="obs.")

data("AirPassengers")
AirPassengers
typeof(AirPassengers)
class(AirPassengers)
str(AirPassengers)
plot(AirPassengers)
reg<-lm(x-y)
reg
class(reg)
plot(reg)
reg

barplot(x)
boxplot(x)
hist(x)
hist(x, breaks=10)

dd <- read.table('clipboard', dec=",", header=TRUE)
dd
boxplot(czas - kraj, data=dd)

dd1<- data.frame(naz=c("A1", "A2", "B1", "B2"), sp=c(100,105,50,200))
dd1
pie(dd1$sp)
z<-dd1$sp
names(z)<-dd1$naz
pie(z)
