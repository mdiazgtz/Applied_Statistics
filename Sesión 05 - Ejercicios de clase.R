enterok <- 1:4
factor1 <- c("a", "b", "c", "d")
numeroh <- c(1.2, 3.4, 4.5, 5.6)
cadenaf <- as.character(factor1)
df <- data.frame("entero"=enterok, "factor"=factor1, "numero"=numeroh, "cadena"=cadenaf)

dim(df)
length(df)
names(df)
names(df) <- c("columna1", "columna2", "columna3", "columna4")

matriz <- matrix(c(1,2,3,4,5,6,7,8,9),ncol=3,nrow=3)
df2 <- as.data.frame(matriz)


### Listas
vector1 <- 1:10
lista1 <- list("numeros"=vector1, "valores numericos"=matriz, "datos"=df)
lista2 <- list("lista1"=lista1, "listaderespaldo"=lista1,"vector"=vector1)
length(lista1)
length(lista2)
dim(lista1)
dim(lista2)

## ejemplo
data(iris)
names(iris)


# Extra
multiplos <- 1:49
