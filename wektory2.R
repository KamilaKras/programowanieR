#Utwórz sekwencje liczb:

aa<-seq(100:199)
aa

bb<-seq(199:100)
bb

cc<-seq(0,5, 0.1)
cc

dd<-seq(0,3, length.out=100)
dd

ee<-seq(3,0, length.out=100)
ee

ff<-seq(log(1), log(20))
ff

#Zadeklaruj zmienne:

x<-1
x
y<-log(5)
y
z<-pi
z
aa<-"programowanie"
aa

x1 = x2<-1
x1
x2


#Wykonaj nastepujace polecenia
  

rm(z)
z

logi<-x==x1
logi

cat("Zmienna x jest równa ", x, " a zmienna aa jest równa ", aa)

rm(list = ls())


#Sprawdz, jakie dostepne sa zestawy danych. Wczytaj dane na temat liczby pasazerów linii lotniczych. Zrób wykres tych danych.

data()
data("AirPassengers")
plot(AirPassengers)

getwd() 
list.files("C:/Users/kamil/OneDrive/Dokumenty")
setwd("C:/Users/kamil/OneDrive/Dokumenty")

help(cat)

#CWICZENIA 2

#Utwórz wektory

f) (4, 4, …, 4, 6, 6, …, 6, 3, 3, …, 3), gdzie 4 powtarza sie 10 razy, 6 powtarza sie 20 razy, a 3 – 30 razy
g) (1, 3, 5, 7, 9, 11, 13, …, 51)

a <-c(1:20)
a

b<-c(20:1)
b

c<-c(1:20, 19:1)
c

d<-c(4,6,3)

d<-rep(c(4,6,3), c(10))
d

e<-rep(c(4,6,3), c(11, 10, 10))
e

f<-rep(c(4,6,3), c(10, 20, 30))
f

g<-seq(1,51, 2)
g

#zadanie2

0.1^(3*(1:12)) * 0.2^(1+3*(0:11))

(2^(1:23))/(1:23)


