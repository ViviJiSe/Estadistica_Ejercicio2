#=============================================================================

# Autor: Viviam Jimenez
# Proposito: Ejercicio Practico 2
# Fuente de datos
# Version de Windows
# Se trabajo en RStudio version: 1.4.1717
# Ultima actualizacion: 29/jun/21

#=============================================================================

# Directorio de trabajo 

rm(list = ls())
   #clear all

# Llamar al directorio de trabajo

#setwd("C:/Users/default.LAPTOP-P5L9CHB3/OneDrive - LEAD University/2021/
#2nd Cuatri/Probabilidad y Estad?stica")

# ---- Paquetes instalados ---- #

#install.packages("faraway")
#install.packages("dplyr")

# ---- Llamado librerias ---- #

library(faraway)
library(haven)
library(dplyr)
#=====================Ejercicio Practico 2===================================

# ---- 1 ---- #


# Crear una lista donde guarde la informacion de 4 personas, con 
# los siguientes componentes: nombre, edad y sexo. 
# Crear un data frame con esa misma informacion.

nombre = c("Daniela", "Oscar", "Andrea", "Marcelo") 
edad = c(25,52,35,65)
sexo = c("F", "M", "F", "M")

df1 = data.frame(nombre,edad,sexo)

df1

# ---- 2 ---- #

# A?adirle dos nuevas variables al data frame que indique si la persona 
# estudia o no y si tiene cuenta de ahorros o no, sin rehacer el data frame de 
# nuevo.

estudia = sample(c("Si","No"), size = 4, replace = TRUE)
ctaAhorros = sample(c("No","Si"), size = 4, replace = TRUE)

df1 = cbind(df1,estudia, ctaAhorros)
df1

# ---- 3 ---- #

# (i) A partir del data frame anterior obtener otro data frame que contenga la
# informaci?n de las primeras 2 personas ?nicamente.

df2 = df1[(1:2),]
df2

#(ii) Obtenga los datos de la edad ?nicamente, h?galo de dos formas distintas.

df1[c(2)]
df1[c("edad")]


#(iii) Obtenga el nombre de la persona 2 y si la persona 4 tiene cuenta de 
#ahorros.


if(df1[4,"ctaAhorros"]== "Si"){
  df1[2,"nombre"]
}


paste("La persona en la posicion 2 se llama:", df1[2,"nombre"])

paste("La persona en la posicion 4", df1[4,"ctaAhorros"],
      "tiene cuenta de ahorros")

# ---- 4 ---- #

# Cargar el archivo de datos *gala* de la librer?a *faraway*. Investigar 
# c?mo se pueden exportar el data frame gala a un archivo de excel en 
# formato csv.

data(gala)
gala

write.csv(gala,"C:\\Users\\default.LAPTOP-P5L9CHB3\\gala.csv")

# ---- 5 ---- #

#Crear la siguiente matriz:

matriz = matrix(c(1, 1, 1, 1, 1, 1, 1, 1, 1 ,1,
                  4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
                  5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
                  9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
                  nrow=4,ncol=10, byrow = TRUE)
matriz



