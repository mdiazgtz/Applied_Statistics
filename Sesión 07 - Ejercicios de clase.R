
V1 <- 1:49
V1 <- V1[V1%%2==0]
V1 <- V1[10:12]
A <- matrix(c(0,0,7,2,5,0,3,0,0),ncol=3,nrow=3)
B <- matrix(c(0,1,1,1,0,1,1,1,0),ncol=3,nrow=3)
V2 <- solve(B,V1)


# A %*% V2 = V1
a <- c(0,1,1,1)
matrix(c(a,0,rev(a)),ncol=3,nrow=3)

c(1:7,8:1)

# # # # # # #

# Sobre if - else - ifelse

# if([Condicion]){
#   operaciones_si_verdadero
# } else {
#   operaciones_si_falso
# }

calificaciones <- c(90,62.5,72,69,88)
promedio <- mean(calificaciones)
texto <- paste0("Calificacion: ",promedio,", ")
if(promedio>=70){
  print(paste0(texto,"aprobado"))
}else{
  print(paste0(texto,"reprobado"))
}

# ifelse(vector,si_verdadero_vale,si_falso_vale)
c <- c(3,8,1,7,5,2,6)
ifelse(c%%2==0,"Par","Impar")
ifelse(as.data.frame(A)%%2==0,"Par","Impar")


# switch(expresion,lista)
colores <- c("azul","rojo","amarillo","verde","morado")
switch(1,"azul","rojo","amarillo","verde","morado")

switch(1,"azul"="manzana","rojo"="pera","amarillo"="pinia",
       "verde"="sandia","morado"="melon")

opcion <- 3# funcion/secuencia de pasos
colores[opcion]