fun <- function(a,b,c){
  cat(a, "-", b, "-", c)
  
}
fun(5,6,7)

fun(b=6, a=5, c=7)
fun(b=7,4,5)

fun <- function(a=1, b=3, c=9){
  cat(a, "-", b, "-", c)
}

fun(3,4,5)
fun()

fun(3,4)

help(plot)

fun <- function(x, ...){
  list(...)
}

fun(3, 8, 1:9, "aaa")

fun <- function(x, ...){
  ll <- list(...)
  ll[[1]] * x + ll[[2]]
}

fun(5, 1:10, 2)

plot(1:10, 10:1, col="red")

x <= rnorm(100)

x
hist(x)

mojhist <- function(x, ...) {
  n <-length(x)
  hist(x, breaks = n/10, ...)
}

mojhist(x)
mojhist(x, col="blue")

fun <- function(x) {
  print(deparse(substitute(x)))
}

fun(2*sin(x)+7)

plot(x, 2*sin(x))

#fabryki funkcji
mnoz.a <- function(a) {
  f <- function(x) a*x
  f
}

f2 <- mnoz.a(2)
f2(5)

f3 <- mnoz.a(3)
f3(5)


2+3
"+"(2,3)

#rekurencja

"+" <- function(a,b) {sin(base::"+"(a,b))}
2 + 3

rm("+")


"%subset%" <- function(A, B){
  setequal(A, intersect(A, B))
}

c(6,1,9) %subset% 1:10

c(11, 1,9) %subset% 1:10

x<- c(5,6,1)
names(x) <- c("aa", "bb", "cc")
names (x)

"f<-" <- function(x, value)

  "logarytmuj<-" <- function(x, value){
    x <- log(x, base=value)
    x
  }  

x <- 2:5
logarytmuj(x) <- 10
x


#Zadanie 10

# Funkcja, która mnoży wektor przez podaną liczbę
mnoz <- function(x) {
  function(multiplier) {
    x * multiplier
  }
}

# Funkcja podstawieniowa, która przypisuje nowe wartości do oryginalnego wektora
`mnoz<-` <- function(x, value) {
  multiplier <- value
  x[] <- x * multiplier
  x
}

# Tworzenie wektora
x <- c(1, 2, 3)

# Mnożenie elementów wektora x przez 5
mnoz(x) <- 5

# Wyświetlanie zmodyfikowanego wektora
print(x)

#zadanie 12

nwd <- function(a, b) {
  while (b != 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(abs(a))
}

nwd(10,5)

nww <- function(a, b) {
  return(abs(a * b) / nwd(a, b))
}
nww(10,2)

rozkład_p <- function(a) {
  factors <- integer(0)  # Pusty wektor dla czynników pierwszych
  if (a < 2) {
    return(factors)  # Jeśli liczba mniejsza niż 2, zwróć pusty wektor
  }
  # Sprawdzanie podzielności przez 2
  while (a %% 2 == 0) {
    factors <- c(factors, 2)
    a <- a / 2
  }
  # Sprawdzanie podzielności przez kolejne liczby nieparzyste
  factor <- 3
  max_factor <- sqrt(a)
  while (factor <= max_factor) {
    while (a %% factor == 0) {
      factors <- c(factors, factor)
      a <- a / factor
      max_factor <- sqrt(a)
    }
    factor <- factor + 2
  }
  # Jeśli a > 1, to a jest liczbą pierwszą
  if (a > 1) {
    factors <- c(factors, a)
  }
  return(factors)
}

# NWD
print(nwd(24, 36))  # Powinno zwrócić 12

# NWW
print(nww(24, 36))  # Powinno zwrócić 72

# Rozkład na czynniki pierwsze
print(rozkład_p(360))  # Powinno zwrócić c(2, 2, 2, 3, 3, 5)


#zadanie 13
`%potegi%` <- function(left, right) {
  if (length(left) != length(right)) {
    stop("Wektory muszą być tej samej długości")
  }
  left^right
}

# Definiowanie wektorów
vektor1 <- c(2, 3, 4)
vektor2 <- c(2, 1, 3)


# Użycie zdefiniowanego operatora
wynik <- vektor1 %potegi% vektor2

# Wyświetlenie wyniku
print(wynik)  # Spodziewany wynik: c(4, 3, 64)

wynik2 <- c(2, 3, 4) %potegi% c(2, 1, 3)

print(wynik2)

roznicowe_wykr <- function(a, b, c, x1, n, plot_col = "blue", bg_col = "white", plot_title = "Trajektoria ciągu") {
  # Sprawdzenie, czy liczba wyrazów ciągu jest dodatnia
  if (n <= 0) {
    stop("Liczba wyrazów ciągu 'n' musi być większa od 0")
  }
  
  # Inicjalizacja wektora na ciąg wartości
  x <- numeric(n)
  x[1] <- x1
  
  # Obliczanie kolejnych wyrazów ciągu
  for (i in 2:n) {
    x[i] <- a * x[i-1]^2 + b * x[i-1] + c
  }
  
  # Rysowanie wykresu
  plot(x, type = 'b', col = plot_col, bg = bg_col, pch = 21, main = plot_title,
       xlab = "Indeks", ylab = "Wartość", lwd = 2, ylim = c(min(x), max(x)))
}

roznicowe_wykr(a = 0.5, b = 1, c = 1, x1 = 1, n = 10, plot_col = "red", bg_col = "gray", plot_title = "Przykład ciągu różnicowego")

ff <- function(x) {
  exp <- function(z)
    return(2*z)
  exp(x)
}

ff(1)

exp(2)

