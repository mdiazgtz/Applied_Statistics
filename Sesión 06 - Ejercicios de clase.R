# Ejercicio D1
x <- 365
as.integer(x/10) %% 10

# Ejercicio D2
# Visto en clase

# Ejercicio D3
# Visto en clase

# Ejercicio D4
queue <- c("Alan", "Belen", "Cristobal", "Diana")
queue <- c(queue,"Esteban")
queue <- queue[c(-1)]
queue <- c("Fatima",queue)
queue <- queue[-which(queue=="Esteban")]
queue <- queue[-which(queue=="Cristobal")]
which(queue=="Belen")

# Ejercicio D5
vec <- c(3,4)
polares <- c(sqrt(vec[1]^2+vec[2]^2),atan(vec[2]/vec[1]))

# Ejercicio C1
rm(list=ls())
x <- 1
x[3] <- 3
y <- c()
y[2] <- 2
y[3] <- y[1]
y[2] <- y[4]
z[1] <- 0

# Ejercicio C2
rm(list=ls())
a <- c(5,2,8,3,2,1,7)
b <- c(1,5,3,0,1,5,3)
c <- 2
d <- (a<b)*(a*b) + (a>b)*(a+b)
d <- d-c
e <- c^d
