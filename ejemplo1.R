#explorando R
u<-50 #asignacion de valor
u #imprimir el valor
length(u)#longitud de un vector
v<-c(1,2,3,4,5,6,7,8,9,10) #concatenar elementos
v
# cuando imprime [1] indica la posicion de los elemento de la linea impresos
length(v)
v[5] #para imrpimir un elemento del vector ponemos el numero de su posicion en el vector
v[1:3]
class(v)

#estadistica descriptiva
summary(v) #resumen
min(v) #minimo
max(v) #maximo
median(v) #mediana
mean(v) #media
range(v) #rango
#R da el rango imrpimiendo los numeros de los extremos


help(range) #descripcion de una funcion en R
data() #leer datasets disponibles
data("women") #leer
women
help(women) #descripcion del dataset
E1 <- women #guardar en nombre corto
#E1 es ejemplo 1
E1
length(E1) #como es matriz te dice el numero de columnas es decir la longitud del vector
class(E1)
dim(E1) #dimension de matrices
summary(E1) #resumen del dataset
#extraer elementos/ extraer columnas

#extraer un solo elemento de la matriz

E1[3,2] #formato (renglon , columna)

#Los primeros 5 renglones
E1[1:5,1:2]

#OTRA FORMA
E1[1:5,]
#solo peso
E1[,2]
#solo altura
E1[,1]

#PARA LLAMAR UNA SOLA COLMNA
E1$weight
#PARA LLAMAR UNA SOLA COLUMNA UN AOSLA POSICION
E1$weight[3]
mean(E1$height) #media de estatura
summary(E1$height) #resumen de columna
sum(E1$height) #suma de una columna en R

#ciclos
#calcular el promedio de las estaturas "a mano"

x<-0 #par que pueda sumar 
#i es el contador
for(i in 1:length(E1$height)){
  x<- E1$height[i]+x #para que vaya sumando lo que lleva
  
}

x/length(E1$height)#promedio ya con ciclo 


#repetidor
#vector de las alturas acumuladas
aux<-rep(0,15) #vector 'vacio'
for(i in 1:length(aux))
{
  aux[i]<-sum(E1$height[1:i])
}
aux

#graficas
hist(E1$height)
help("hist")
hist(E1$height,main ="Histograma de frecuencias",xlab= "Altura(In)",ylab= "frecuencia absoluta")

plot(E1$height,E1$weight,"grafica de dispersion altura vs peso",)


#abrir un excel 

setwd("C:/Users/miche/OneDrive/Documentos/Michelle - Facultad de Ciencias Físico Matemáticas/7TO SEMESTRE/ESTADÍSTICA APLICADA/R/")
E2<-read.table("E2EA0G2.csv", sep=',', header = TRUE)
E2
summary(E2)
E2$Sexo[6]<- "M"
E2
E2$Edad[7]<-20
E2
#promedio de calificacion de las damitas

E2[E2$Sexo=="F",] #no olvidar q es matriz tenemos q poner coma para qu esepa que son varias columnas
E2[E2$Sexo=="F","Calificacion"]
names(E2)
attach(E2) #METE EN UNA VARIABLE A LOS NOMBRES
Calificacion
mean(E2[E2$Sexo=="F","Calificacion"]) #PROM DE CALIF
mean(E2[E2$Sexo!="F","Calificacion"])
mean(E2[!E2$Sexo=="F","Calificacion"])


#grafica de boxplot
boxplot(Calificacion) #pq ya tengo el attach antes
boxplot(Estatura)

#grafica de pastel
aa<-factor(Edad) #considere factor pq ya hice el attach 
levels(aa)<-c(19,20,21) #niveles
table(aa)
pie(table(aa))
pie(table(aa),main="Proporcion por edad")
gen<-factor(Sexo) #factor genero
levels(gen)<-c("Mujeres","Varones")
pie(table(gen),main="Proporcion por sexo")
gen
