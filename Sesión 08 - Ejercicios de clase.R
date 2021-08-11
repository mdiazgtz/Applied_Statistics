# Sesion 8
# Ciclos

vec <- c(5, 1, 10, 2)
a <- 0

# for
for(i in 1:10){
  a <- a+i
  print(a)
}

a <- 0
for(i in vec){
  print(i)
  a <- a+i
  print(a)
}


# while

umbral <- 5
valor <- 0
while(valor < umbral){
  print("Todavia no")
  valor <- valor +1
}

umbral <- 5
valor <- 0
while(valor < umbral){
  print("Todavia no")
  valor <- valor -1
}


# break y next
for(i in 1:10){
  if(i==5){
    break
  }
  print(i)
}

for(i in 1:10){
  if(i%%2==0){
    next
  }
  print(i)
}


umbral <- 5
valor <- 0
while(valor < umbral){
  if(valor==-5){
    break
  }
  print("Todavia no")
  print(valor)
  valor <- valor -1
}


# repeat

valor <- 0
vector <- NULL
repeat{
  valor <- valor +1
  if(valor == 5){
    break
  }
  print(valor)
}


# Calcular los primeros n valores de la sucesion de fibonacci (for)
a <- 1
b <- 1
n <- readline("Ingrese el valor de n: ")
for(i in 1:n){
  print(a)
  c <- a + b
  a <- b
  b <- c
}

# Calcular los valores de la sucesion de Fibonacci menores a x (while o repeat)
a <- 1
b <- 1
x <- as.numeric(readline("Ingrese el limite de los valores de la serie de Fibonacci: "))
while(a < x){
  print(a)
  c <- a + b
  a <- b
  b <- c
}

a <- 1
b <- 1
x <- as.numeric(readline("Ingrese el limite de los valores de la serie de Fibonacci: "))
repeat{
  print(a)
  c <- a + b
  a <- b
  b <- c
  if(a >= x){
    break
  }
}
