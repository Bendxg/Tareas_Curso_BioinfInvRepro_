# 1)Se carga el archivo maizteocintle_SNP50k_meta_extended.txt desde el WD
df_maices <- read.delim(file= "../../maices/meta/maizteocintle_SNP50k_meta_extended.txt")

#Cargamos las librerías
library(readr)
library(tidyr)
library(plyr)
library(dplyr)

# 2)Que tipo de objeto creamos?
class(df_maices)

# 3) Como se ven las 6 primeras líneas?
df_maices[1:6,]

#4)Cuantas muestras hay?
nrow(df_maices)

#5) De cuantos estados se tienen muestras?
length(unique(df_maices$Estado.1))

#6)Cuantas muestran fueron colectadas antes de 1980?
length(df_maices$A.o._de_colecta[as.numeric(df_maices$A.o._de_colecta)<1980])

#7)Cuantas muestras hay de cada raza?
table(df_maices$Raza)

#8) En promedio, a que altitud fueron tomadas las muestras
mean(df_maices$Altitud)

#9)Y a que altitud máxima y mínima fueron colectados?
min(df_maices$Altitud)
max(df_maices$Altitud)

#10)Crea una nueva df de datos sólo con los datos de las muestras 
#de raza Olotilo
nuevadataframe<-df_maices[(df_maices$Raza == "Olotillo"), ]

#11)Crea una nueva df de datos sólo con los datos de las muestras 
#de raza Reventador, Jala y Ancho
nuevadataframe2<-df_maices[(df_maices$Raza == "Reventador"| df_maices$Raza == "Jala" | df_maices$Raza == "Ancho"), ]

#12)Escribe el archivo csv
setwd("../../maices/meta")
write.csv("submat.csv", file= "nuevadataframe2")

