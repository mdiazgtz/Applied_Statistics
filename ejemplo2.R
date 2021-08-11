#analisis de regresion
data(women)
plot(women)

#revisando modelo lineal
reg.l<-lm(women$weight~women$height)
#modelo generado es peso estimado=-87.54+3.45altura
summary(reg.l)
anova(reg.l)
#H0:B1=0 vs Ha: B1!=0
#rechazo H0 si p valor 1.09e-14 <alfa 0.05
#rechazo H0, las variables se relacionan 

#mostrando un ajuste al 99.03
summary(reg.l)$adj.r.squared

#intervalos de confianza
confint(reg.l) #sin evidencia de regresion
reg.lo<-lm(women$weight~0+women$height)
summary(reg.lo)

#graficando
plot(women,main="comparativo de recta vs recta al origen",xlim=c(0,max(women$height)),ylim=c(0,max(women$weight)))
abline(reg.l,col="purple")
abline(reg.lo,col="blue")
fitted.values(reg.lo) #estimaciones y gorro
points(71,149.7754)
residuals(reg.lo) #errores
#como no veo que pasa en el origen hare un alejamiento de la grafica(linea 19)

#modelo linealizable: exponencial
#y gorro=b0E**B1x<- usa y. (yasterisco) vs x 
y.t<-log(women$weight)
reg.la<-lm(y.t~women$height)
summary(reg.la) #modelo lineal asociado y.t gorro=3.27+0.025
B0.exp<-exp(coef(reg.la)[1])
#modelo exponencial y gorro=26.44e**0.25x
fitted.values(reg.la)#y gorro del modelo lineal asociado
y.g.exp<-B0.exp*exp(coef(reg.la)[2]*women$height)

#graficando modelo exponencial
plot(women,main="modelo exponencial")
lines(women$height,y.g.exp,col="green")

#revisando modelo cuadratico
reg.c<-lm(women$weight~poly(women$height,degree = ))
#modelo generado y gorro=136.7+57.7x+5.33**2
summary(reg.c)

#comparativa de cuadratico y exponencial
plot(women,mai="Comparativa modelo exponencial vs cuadratico")
lines(women$heigh,y.g.exp,col="green") #modelo exponencial
lines(women$height,fitted.values(reg.c),col="magenta")#modelo cuadratico

legend() #pinta un cuadrito en el que dice que modelo es cual rayita va?
