x<-c(1,16, -6,pi,sqrt(2),-10)
length(x)
y<-numeric(10)
z<-c(x, 100, 200, y)
length(z)


a <- 21:50
a
50:21

n<-10
0:n-1
0:(n-1)

seq(1,10)
seq(1,10, 0.25)
seq(10, 1, -0.33)
seq(-2, 5, length.out=50)

xx<-c(1:10, 0:-5, 1000, seq(-1,1, length.out=5))
xx

rep(8, 4)
rep(c(1,2,3), 3)
rep(c(1, -1, -5), c(3, 2, 4))


napis<-c("aaa","bbb","cc")
length(napis)
napis2<-c("dd", "koniec", "kot")
c(napis, napis2)

logi<-c(T, T, F, T, F)
logi

x
x<0

logi<-x<0
logi

#indeksowanie
x[1]
x
x[2]
x[1]<-100
x
x[length(x)]<--15
x
x[-1]
x[-2]
x[1:3]
x[-(1:3)]
x[3:1]
x[c(1,3,6)]
x[c(6,3,1)]
x[-c(6,3,1)]
x[c(6,2,4,2,2)]
length(x)
x[c(F,T,T,F,T,F)]


x<0
x[x<0]
x[x<0] <- -1000
x

x[x<0]<- NA
x

#czy jest obserwacja brakujaca
is.na(x)
x[is.na(x)]<-0
x


kraj<-c("POL","CZ","CZ","POL","POL")
kraj
cena<-c(12,250,173,15,75)
cena
cena[kraj=="POL"]<-cena[kraj=="POL"]*1.1
cena

2*x
x
x/2
x
x+10
x-20
c(1,2,3)*c(5,6,7)
c(1,2,3)+c(5,6,7)
c(1,2,3)-c(5,6,7)
c(1,2,3)/c(5,6,7)
c(1,2,3)^c(5,6,7)
