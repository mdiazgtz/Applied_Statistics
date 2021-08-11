# Tipos de Vectores

# Vectores Numericos
a <- 1:15
b <- c(2.3, 4.5, 3.2)
2*a
2*a-1
a^2
7*a+8
seq(1, 30, by = 7)

# Crea tu vector numerico
c <- -5:8
d <- -20:-15
e <- c(2,4,6,8,10)
f <- 6:3

# Crear tu vector logico
g <- 2:20 %% 2 == 0
h <- 2:20 %% 4 == 3
i <- a < 10

# Crear tu vector tipo caracter
j <- c("suma", "resta", "multiplicacion", "division")

# Ejemplo con vector doble
k <- sqrt(2)^2
k-2         # Observar que no es igual a cero

# Ejemplo sobre valores especiales de los vectores de tipo doble
-1:1 / 0 == Inf  # Observar que sucede
is.finite(0)
is.finite(Inf)
is.finite(NA)
is.finite(-Inf)
is.finite(NaN)

is.infinite(0)
is.infinite(Inf)
is.infinite(NA)
is.infinite(-Inf)
is.infinite(NaN)

is.na(0)
is.na(Inf)
is.na(NA)
is.na(-Inf)
is.na(NaN)

is.nan(0)
is.nan(Inf)
is.nan(NA)
is.nan(-Inf)
is.nan(NaN)

l <- NULL