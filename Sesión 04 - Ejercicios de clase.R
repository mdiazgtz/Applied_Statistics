datos <- 1:12

matrix(datos, nrow=4, ncol=3)
matrix(datos, nrow=3, ncol=2)
matrix(datos, nrow=5, ncol=4)
matrix(datos, nrow=6, ncol=4)

a <- 1:4
b <- 11:13
c <- 21:25

ej1 <- cbind(a,b,c)
ej2 <- rbind(a,b,c)

dim(ej1)
length(a)

ej1*ej2
ej2+ej2
ej1/3
ej2^2
2^ej1

ej1 %*% ej2
ej2 %*% ej1
ncol(ej2)
nrow(ej2)

d <- matrix(1:9, nrow=3, ncol=3)
det(d)
t(d)

which(b==12)
matrizA <- matrix(c(2,3,5,0,0,1,1,0,1),ncol=3,nrow=3)
matrizB <- matrix(c(1,1,1,0,2,1,1,1,0),ncol=3,nrow=3)
solve(matrizA,matrizB)
solve(matrizA)

matrizC <- matrix(c(3,2,-1,2,2,0.5,1,4,-1),ncol=3,nrow=3)
resultado <- as.matrix(c(1,-2,0))
solve(matrizC,resultado)


# Escriba un codigo que produzca un vector con todos los enteros del 1 al
# 100 que no sean divisibles por 2, 3 o 5.
base <- 1:100
base[base%%2!=0 & base%%3!=0 & base%%5!=0]

# Escriba la matriz identidad de 5 x 5. Convierta todos los elementos distintos a cero en
# cinco de dos maneras distintas.
identidad <- matrix(c(1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1),ncol=5,nrow=5)
respuesta1 <- identidad*5
respuesta2 <- identidad/(1/5)
respuesta3 <- 5^identidad * identidad
