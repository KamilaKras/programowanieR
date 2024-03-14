aa <- c("aa", "kot", "pies")
ll <- c(T,T,F,F,T)
ll

x<- c(9,7,-8,-5,-3,2)
x

#wektoryzacja 

x>0
#uzyskaj wszystkie elementy wektora x ktore sa wieksze od 0

x[x>0]

#operatorporównania
c(1,2,3) == c(1,2,4)

#zwraca logiczną wartość - czy to takie same czy inne wektory
identical(c(1,2,3), c(1,2,4))
#czy wszystkie elementy są wieksze od 0
all(x>0)
#czy chociaz jeden element jest wiekszy od 0
any(x>0)

#matematyczne
sqrt(4)
sqrt(c(4,9,16,25))
exp(1:5)
sum(x)
prod(x)
mean(x)
median(x)
min(x)
max(x)

#elementy brakujące
y <- c(4,2, -7, NA, 5, NA)
y
# sprawdzamy czy elementy brakujace
is.na(y)
y[is.na(y)]
mean(y)
sum(y)

#pomoc
?sum

sum(y, na.rm  =TRUE)

#ktore indeksy sa wieksze od zera
which(x>0)
#ktore indeksy sa mniejsze od zera
which(x<0)

#ktore elementy są min lub max
min(x)
which.min(x)
which.max(x)

#odwracanie wektora i sortowanie
rev(x)
x
sort(x)


#przypadkowa próbka
sample(x)
sample(x,3)
sample(1:1000)

#rangi elementów
rank(c(4,2,1,8,5))

#w jakiej kolejnosci
order(c(4,2,1,8,5))

xx<-c(4,2,1,8,5)
xx
xx[order(xx)]

zx <- c(5,1,5,5,2,7)
zy<- c(5,2,8,9,8)
zy

#suma zbiorow
union(zx,zy)
intersect(zx,zy)

is.element(3, zx)
is.element(5, zx)
is.element(c(1,3,7), zx)

#przypisanie nazw
names(x)
names(x) <- c("raz", "dwa", "trzy", "cztery", "pięć", "szesc")
x
names(x)

x["dwa"]
x[c("trzy", "dwa")]

#wyswietlanie
cat(x)
print(x)
str(x)

#str pokazuje nam strukture np:

xx<- sample(1000,100)
yy<- sample(1000,100)

reg <- lm(yy~xx)  #regresja liniowa za pomoca kmnk
reg
cat(reg)
str(reg)

#funkcje paste i paste 0 które łącza ze sobą napisy
paste0("aa","kot","pies")
paste("aa", "kot", "pies")
paste("aa", "kot", "pies", sep = ", ")
paste(c("aa","bb","cc"), 1:3)
paste(c("aa","bb","cc"), 1:3, sep = ", ")
paste(c("aa","bb","cc"), 1:3, sep = "", collapse = ", ")

#zadania 11.03.2024

#zadanie 3

x <- seq(10:100)
y <- sum(x^3+4*x^2)
y


a <- seq(1:25)
b <- sum((2^a)/a+(3^a)/(a^2))
b


#zadanie4

paste(c("napis"), 1:30)
paste0(c("fn"), 1:20)

x <- c("a", "b", "c","d","e")
x
y <- 1:5
y

paste0(x,y)

paste0(rep(x, c(5)), rep(y, each=5))
paste0(rep(x, each=5), rep(y, c(5)))

x <- sample(1:1000, 100)
x
y <- sample(1:1000,100)
y

y1 <- x[1:99]
y1
y2 <- x[2:100]
y2

y3 <- x[seq(2,100, by =2)]
y3

y4 <- y[1:99]-x[2:100]
y4

y5 <- x[1:98]-2*x[2:99]+3*x[3:100]
y5

y6 <- sum(x>400)
y6

y[y>mean(y)]

y[y<100] <- 0
y

y[x>700] <- NA
y

sum(exp(-x[2:100])/(1+x[1:99]))


