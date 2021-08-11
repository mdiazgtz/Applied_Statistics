############## 
# Ejercicios Sesión 2


# Prueba correr la línea 5
1 + 2

# En la línea 8 escribe otra línea de código que calcule la suma de 10 y 15
10 + 15

# Predice lo que la consola arrojaría como resultado en la línea 11
8/2*(2+2)                   # Comprueba tu resultado corriendo el código

# Ejecuta las siguientes lineas de codigo para guardarlas en tu sesión
a <- 3
b <- 5
c <- "dos"
d <- "casa"
e <- NULL
masa <- 20
volumen <- 6

# ¿Qué tipo de datos crees que arroje cada una de las siguientes operaciones?
p1 <- a>b
p2 <- c>=d
p3 <- a**3
p4 <- d*c
p5 <- p1 & p2
p6 <- p3 + p4
p7 <- e * p5
p8 <- p2 * a
p9 <- p5 * b
densidad <- masa / volumen

# Conoce el directorio en el que estás trabajando
getwd()

# Revisa los archivos contenidos en tu directorio
list.files()

# Revisa las carpetas contenidas en tu directorio
list.dirs()

# Cambia tu directorio a una carpeta nueva llamada "Taller de R"
setwd("C:/Users/Elaia/Desktop/Taller de R")

# Revisa las variables de tu sesión de R
ls()

# Elimina las variables masa y volumen
rm(masa,volumen)

# Revisa qué paquetes tienes instalados en tu sesión de R
sessionInfo()

# Revisa qué paquetes tienes instalados en R
installed.packages()

# Instala el paquete ggplot2, cárgalo y confirma que haya sido instalado
install.packages("ggplot2")
library(ggplot2)
is.element("ggplot2",installed.packages()[,1])
