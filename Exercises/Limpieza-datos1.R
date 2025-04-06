#Ver tipos de variables de un dataset
str(COVID19_JULIO2020)
#Contiene las tools to modificar los datos
install.packages("dplyr")
library(dplyr)

####################

#SELECT permite seleccionar variables de manera precisa
#Del dataset se trae información sobre la variable atención
variable <- COVID19_JULIO2020 %>% select(atención)
View(variable)

####################

#Filter
#Extrae un subconjunto de filas de un marco de datos segun condiciones logicas
#Filtrar solo datos masculinos M
filtro1 <- COVID19_JULIO2020 %>% filter(Sexo == "M")
View(filtro1)

#Filtrar de edad entre 20 y 50 años
filtro2 <- COVID19_JULIO2020 %>% filter((Edad >=20 & Edad<=50) & Sexo == "M")
View(filtro2)

####################
#Rename
#Renombrar variables de un conjunto de datos, esto renombra el nombre pues del campo
#del dataset se guarda en una variable para no modificar el original
Covid19 <- COVID19_JULIO2020 %>% rename("edad" ="Edad")
View(Covid19)

####################
#Summarise generar resumen de las variables
COVID19_JULIO2020 %>% summarise(mediana = median(Edad),varianza=var(Edad))

###################
#Obtener numero de filas de un dataframe
x = nrow(COVID19_JULIO2020)
print(x)
y = length(COVID19_JULIO2020)
print(y)

###################
#Obtener numero de columnas de un dataframe
z = ncol(COVID19_JULIO2020)
print(z)

###################
#Medidas de tendencia central
summary(COVID19_JULIO2020$Edad)
