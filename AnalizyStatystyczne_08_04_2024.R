#zadanie 4 z poprzednich zajec

dane <- red.table("R_cwiczenia4.csv", sep=";", header=TRUE)
dane

library(readxl)
rm(list=ls())
d1<-read_xlsx("R_cwiczennia4.xlxs", sheet="tabela1")

#Podstawy analizy statystycznej
  
x<-data.frame(a=1:10, b=letters[10:1])
x
summary(x)
str(x)

?rnorm

#prozklad, drozklad, qrozklad, rrozklad, dnorm, pnorm, qnorm, rnorm, dt, pt, qt, rt

x<-rnorm(1000)
plot(x)
mean(x)
sd(x)
help("distributions")

#histogram
hist(x)

hist(x, breaks=30)
hist(x)

#f. gestosci
density(x)
dx<- density(x)
str(dx)
dx
summary(dx)
plot(dx)

#wykresy kwantyl kwantyl - przy założeniu że rozkład normalny
qqnorm(x)
#dla dowolnego rozkładu
qqplot(x, rexp(1000))
qqline(x, distribution=qexp)


place <- read.table("clipboard", sep="\t", header=TRUE, dec= ",")
place
str(place)
mean(place$placa[place$miasto=="Poznan"])
mean(place$placa[place$miasto=="Gdansk"])

split(place$placa, place$miasto)
sapply(split(place$placa, place$miasto), mean)

analiza<-aov(placa~miasto, data=place)
str(analiza)
analiza$model
summary(analiza)
summary(aov(placa ~ branza, data=place))
plot(analiza)

#regresja
reg <- lm(log(inwestycje) ~ stopa_pr + infl + log(PKB) + czas, data=dane)
reg <- lm(log(inwestycje) ~ stopa_pr + infl + log(PKB), data=dane)
reg
summary(reg)
