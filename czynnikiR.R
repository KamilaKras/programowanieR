#CZYNNIKI - FACTORS

x <- c("czerwony","niebieski", "czerwony", "zielony", "niebieski", "czerwony", "zielony")
xf <- factor(x)
xf
str(xf)


xf
length(xf)
levels(xf)
nlevels(xf)
levels(xf) [2] <- "blekitny"
xf

table(xf)
wielkosc <- c(9,8,7,10,9, 11,12)
length(wielkosc)

tapply(wielkosc, xf, mean)
tapply(wielkosc, xf, sd)

?gl
gl(3,5,labels=c("maly", "sredni", "duzy"))

#RAMKI DANYCH - DATA FRAME

dane <- data.frame(
  plec = factor(c("M", "M", "K", "K", "M", "K")),
  czas = c(23, 19.6, 21, 18, 19, 20.5),
  waga = c(80, 65, 71, 59, 63, 81),
  kraj = c("PL", "CZ", "PL","CZ", "DE", "PL")
)
dane

str(dane)

#indeksowanie ramek danych

dane$waga
dane$waga[1] <- 79
dane$waga

dane[2,]
dane[,3]
dane[,'kraj']

zmienna <- "waga"
dane[, zmienna]

dane[-4,]
row.names(dane)
row.names(dane)<-c("Adam", "Jan","Anna","Asia","Karol","Ewa")
dane
dane["Karol",]
dane[c("Karol", "Ewa"),]


dane <- rbind(dane, list(plec="K", czas=22, waga=58, kraj="DE"))
dane
row.names(dane) [7] <- "Helga"
dane

attach(dane)
plec
waga
detach(dane)

dane$plec=="K"
dane$waga[dane$plec=="K"] <- dane$waga[dane$plec=="K"] * 0.9
dane$waga[dane$plec=="K"]
dane

dane$wzrost <- c(179, 181,159, 168, 171, 164, 185)
dane
with(dane, wzrost/100)
within(dane, wzrost <- wzrost/100)

transform(dane, wzrost=wzrost/100)
dane
dane <- transform(dane, wzrost=wzrost/100)
dane

tapply(dane$czas, dane$plec, mean)
tapply(dane$czas, dane$kraj, mean)


#scalanie danych 

dd1 <- data.frame(xx=c("aa", "bb", "cc", "dd", "ee"), yy=1:5)
dd1
dd2 <- data.frame(xx=c("cc", "aa", "dd", "bb"), zz=23:20)
dd2

merge(dd1, dd2)
merge(dd1, dd2, all=TRUE)
merge(dd1, dd2, all.x=TRUE)
merge(dd1, dd2, all.y=TRUE)

write.table(dane, file="dane.txt", sep=";", dec=",")
write.table(dane, 'clipboard', sep="\t", dec=",")

#kopiuj ctrl c i wtedy:
read.table('clipboard', header=TRUE, sep="\t", dec=",")
dd <- read.table('clipboard', header=TRUE, sep="\t", dec=",")

#jak mamy plik excel w ścieżce
library(readxl)
read_excel("dane.xlsx","moje")


#zadania zestaw 4:

x <- sample(20:50, 20)
x
c <- c(rep("maly", 7), rep("sredni", 8), rep("duzy", 5))
c
length(c)
