


airquality

head(airquality)

x<-c(1,2,3,4,5,6)

datos<-airquality

mean(x)

plot(datos)

hist(datos$Ozone)



# Objetivo: estudiar qué es una variable en R.
# ---------------
# En este ejercicio vamos a:
# 1. Realizar operaciones aritméticas en la consola
# 2. Asignar variables a un script en RStudio, y 
# 3. Identificar distintos tipos de datos en R

#######################################
# practica 1: operaciones aritmeticas #
#######################################

# primer acertijo de redes sociales

1+1-1*(1+1-1)/1+1*(-1)


#######################################
# practica 2: asignación de variables #
#######################################

# asigna los numeros a cada fruta

mango <- 10
manzana <- 5
aguacate <- 15


# resuelve el complejo acertijo

Resultado <- 2*aguacate+4*manzana+1.5*mango
# imprime el resultado por pantalla


##################################
# practica 3: tipos de variables #
##################################

# observa la clase del resultado
class(Resultado)

# crea una variable con algún nombre

nombre<- "yisel"
# observa la clase del nombre
class(nombre)

# es 1 mayor que 2
1>2

# cual es la clase de esto

class(1>2)

# suma nombre con resultado

nombre+Resultado


# Objetivo: estudiar qué es una vector en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear vectores en un script
# 2. Realizar opraciones aritméticas con vectores
# 3. Seleccionar elementos en un vector


#####################################
# práctica 1: creando vectores en R #
#####################################

# crear vector carácter con nombre de las películas

PELICULAS<-c("Shrek","Shrek2","Shrek Tercero","Shrek:Felices por siempre")
          
# crear vector numérico con puntuación de las películas

puntuación <-c(7.9, 7.2, 6.1, 6.3)

# crear vector lógico sobre si la película es posterior a 2005

posterior_2005<-c(FALSE,FALSE,TRUE,TRUE)

####################################################
# práctica 2: operaciones aritméticas con vectores #
####################################################

# sumar 2 a la puntuación

puntuación + 2
# dividir la puntuación entre 2

puntuación/2
# crea la puntuación propia

puntuación_propia<-c(10,9,6,7)



# calcular diferencia entre puntuaciones

puntuación_propia-puntuación
# calcular la longitud del vector

length(puntuación)
# calcular el promedio del vector puntuacion
mean(puntuación)

###################################################
# práctica 3: selección de elementos de un vector #
###################################################

## selección basada en posición
# seleccionar la tercera película

PELICULAS[3]

# seleccionar la primera y la última película

PELICULAS[c(1, 4 )]

## selección basada en condición lógica
# crear condición lógica

puntuación_baja<- puntuación <7

# mostrar condición para ver TRUE/FALSE
puntuación_baja

PELICULAS[puntuación_baja]



# Objetivo: estudiar qué es una matriz en R.
# ---------------
# En este ejercicio vamos a:
# 1. Crear matrices en un script
# 2. Realizar opraciones aritméticas con matrices
# 3. Seleccionar elementos en una matriz


#####################################
# práctica 1: creando matrices en R #
#####################################

# crear vectores para las columnas de la matriz
warner<-c(20,20,16,17,17,22,17,18,19)
disney<-c(11,13,11,8,12,11,12,8,10)
fox<-c(18,15,15,15,16,17,15,13,11)


# fuente https://www.the-numbers.com/market/


# creando matriz a partir de vectores

productores<-matrix(c(warner, disney, fox),
                   nrow=9,
                   ncol=3)



# imprimir matriz en consola

productores

# agregar nombres de columnas

colnames(productores)<-c('warner' ,'disney','fox')

# agregar nombres de filas/renglones

rownames(productores)<-c('2010','2011','2012','2013','2014','2015','2016','2017','2018')

# imprimir matriz por segunda vez

productores

####################################################
# práctica 2: operaciones aritméticas con matrices #
####################################################

# resta 5 a la matriz

productores-5

# sumar matriz consigo misma

productores + productores

# multiplicar la matriz consigo mismo

productores*productores

###################################################
# práctica 3: selección de elementos de un matriz #
###################################################

# seleccionar un elemento de la matriz

productores[3,2]

# seleccionar más de un elemento de la matriz

productores['2012','disney']

productores[c(3,4),c(2,3)]
productores[c(3,4),c('disney','fox')]

# seleccionar una fila o renglón

productores[3,]
productores['2012',]

# seleccionar una columna
productores[,2]
productores[,'disney']


# Objetivo: estudiar qué son factores en R.
# ---------------
# En este ejercicio vamos a:
# 1. Crear factores en R
# 2. Recodificar niveles de un factor
# 3. Ordenar niveles de un factor


#####################################
# correr esto antes de empezar.   #
#####################################

# crear vector de ventas
tallas <- c('m', 'g', 'S', 'S','m', 'M')

# intentar graficar
plot(tallas)

###################################
# práctica 1: crear factores en R #
###################################


# crear factor de un vector

tallas_factor<-factor(tallas)

# graficar factor

plot(tallas_factor)

# mirar niveles de factor

levels(tallas_factor)

######################################
# práctica 2: recodificando factores #
######################################

# creando factor recodificado


tallas_recodificado <- factor(tallas,
                            levels=c("g","m","M","S"),
                            labels = c("G","M","M","S"))



# graficando ventas_recodificado

plot(tallas_recodificado)

#############################################
# práctica 3: ordenando niveles de factores #
#############################################

# ordenando niveles (copiar factor anterior)


tallas_ordenado<-factor(tallas,
       ordered = TRUE,
       levels=c("S","m","M","g"),
       labels = c("S","M","M","G"))


# viendo el orden en los niveles

tallas_ordenado

# graficando el factor ordenado

plot(tallas_ordenado)

# Objetivo: estudiar qué son dataframes en R.
# ---------------
# En este ejercicio vamos a:
# 1. Crear dataframes en R
# 2. Ordenar dataframes por columnas
# 3. Seleccionar elementos de un dataframe

#####################################
# correr esto antes de empezar.   #
#####################################

# vectores sobre peliculas de Shrek
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)

#######################################
# práctica 1: crear un dataframe en R #
#######################################

# crear dataframe de vectores

pelicula_df<-data.frame(nombre,
                      puntuación,
                      posterior_2005)


# mostrar dataframe
pelicula_df

# cambiar nombre de dataframe

names(pelicula_df)<-c('NOMBRE',
                     'PUNTUACION',
                     'POSTERIOR_2005')

# mostrar dataframe de nuevo

pelicula_df


#####################################################
# práctica 2: Seleccionar elementos de un dataframe #
#####################################################

# seleccionar un elemento del dataframe

pelicula_df[3,2]
pelicula_df[3,'PUNTUACION']
# seleccionar más de un elemento del dataframe

pelicula_df[c(3,4),c(2,3)]
pelicula_df[c(3,4),c('PUNTUACION','POSTERIOR_2005')]

# seleccionar una fila o renglón del dataframe

pelicula_df[3,]

# seleccionar una columna del dataframe

pelicula_df[,2]
pelicula_df[,'PUNTUACION']
pelicula_df$PUNTUACION


#################################
# práctica 3: ordenar dataframe #
#################################

# mostrar el dataframe

pelicula_df

# mostrar el indice de la columna de puntuacion con order

order(pelicula_df$PUNTUACION)

# funcion order (menor a mayor)

orden_menor_mayor<-order(pelicula_df$PUNTUACION,
                         decreasing = FALSE)

# mostrar el dataframe ordenado

pelicula_df[orden_menor_mayor,]

# funcion order (mayor a menor)

orden_mayor_menor<-order(pelicula_df$PUNTUACION,
                         decreasing = TRUE)

# mostrar el dataframe ordenado

pelicula_df[orden_mayor_menor,]

# guardar el dataframe ordenado

df_ordenado<-pelicula_df[orden_mayor_menor,]
df_ordenado


# Objetivo: estudiar qué son las listas en R
# ---------------
# En este ejercicio vamos a:
# 1. Crear listas en R
# 2. Seleccionar elementos de una lista
# 3. Identificar listas en R

#####################################
# correr esto antes de empezar.   #
#####################################

# Cargando datos de videos anteriores
# informacion peliculas shrek. Ver video -> https://bit.ly/2LaUWbo
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)
# informacion estrenos de peliculas. Ver video -> https://bit.ly/2KDKCJE
warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)

# crear diferentes estructuras de datos en R
vector_titulos <- nombre
matriz_peliculas <- matrix(c(warner, disney, fox),
                           nrow = 9,
                           ncol = 3)
peliculas_df <- data.frame(nombre,
                           puntuacion,
                           posterior_2005)

####################################
# práctica 1: crear una lista en R #
####################################


# crear lista en R

lista_curso<-list(vector_titulos,
                  matriz_peliculas)


# mostrar lista
lista_curso

# cambiar nombre de dataframe

names(lista_curso)<-c('vector',
                     'matriz')

# mostrar lista (sí, otra vez)

lista_curso

##################################################
# práctica 2: Seleccionar elementos de una lista #
##################################################

# Seleccionar vector de la lista

lista_curso[['vector']]

# Seleccionar el tercer elemento del vector de la lista

lista_curso[['vector']][3]

# Seleccionar fila 5 y columna 3 de la matriz de la lista

lista_curso[['matriz']][5,3]

######################################################
# práctica 3: agregar/eliminar elementos a una lista #
######################################################

# agregar dataframe a lista

lista_curso[['data_frame']]<-peliculas_df

# revisar que está el dataframe

lista_curso

# eliminar un elemento de lista

lista_curso[['vector']]<-NULL

# revisar que no está el vector

lista_curso

#INSTALAR PAQUETES

install.packages('ggplot2')

# T2V2 - importar datos de excel a R

# Objetivo: aprender a importar datos de excel a R
# ------------------------------------------------
# En este ejercicio vamos a aprender:
# 1. Que necesitas antes de empezar
# 2. Cómo importar datos utilizando código de R
# 3. Cómo importar datos con la interfaz de RStudio


#####################################
# 1. Que necesitas antes de empezar #
#####################################

# instalar paquete readxl

install.packages("readxl")

# cargar paquete readxl

library(readxl)

# buscar la ruta del archivo de excel

file.choose()
# Copiar ruta de la consola y guardar en variable

ruta_excel<- "D:\\Documents\\Grado\\gapminder_importar_a_r.xlsx"
# como mirar las hojas de tu excel

excel_sheets(ruta_excel)

#####################################
# 2. importar excel con código de R #
#####################################

# importar caso ideal

caso_ideal <- read_excel(ruta_excel)


# importar caso medio

caso_medio <- read_excel(ruta_excel,
                         sheet ='Hoja2')

# importar caso dificil

caso_dificil<- read_excel(ruta_excel,
                          sheet = 'Hoja3',
                          range = 'C7:F17')


##########################################
# 3. importar excel con interfaz RStudio #
##########################################

# ir a File > Import Dataset > From Excel...





# T2V4 - graficar en R

# Objetivo: diferenciar formas de graficar en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. graficar con base graphics
# 2. graficar con ggplot2

# datos de la primera parte
year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)

# graficando con codigo

plot(x= year,
     y= disney)


# editando la grafica

plot(x = year,
     y = disney,
     xlab = '',
     ylab = '',
     col = 'cornflowerblue',
     pch = 16,
     panel.first = grid())


# Graficas con ggplot2
install.package(ggplot2) # para instalar ggplot2
library(ggplot2)

# hacer dataframe
peliculas <- data.frame(year, 
                        disney)

# graficar utilizando ggplot
ggplot(data = peliculas,
       mapping = aes(x = year,
                     y = disney)) +
      geom_point()+
      labs(title = 'disney')


# Objetivo 9: graficar histogramas en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. histogramas con base graphics
# 2. histogramas con ggplot2

# cargando los datos
data("mtcars")

# haciendo histograma básico

hist(mtcars$hp)

# editando histograma

hist(mtcars$hp,
     # breaks = 50,
     breaks = seq(50,350,50),
     col = 'darkgray',
     border = 'gray10',
     main = 'titulo',
     xlab = 'variable x',
     ylab = 'conteo')
     



# cargar ggplot2
# install.packages("ggplot2")
library(ggplot2)

ggplot(data = mtcars,
       mapping = aes(x = hp))+
  geom_histogram(bins = 9)


# hacer un histograma en ggplot2

ggplot(data = mtcars,
       mapping = aes(x = hp,
                     fill = factor(vs)))+
  geom_histogram(bins = 9,
                 position = 'identity',
                 alpha = 0.8) + 
        labs(title = 'TITULO',
             fill = 'VS MOTOR',
             x = 'Caballos de Fuerza',
             y = 'Conteos',
             subtitle = 'Subtitulo',
             caption = 'Fuente de los datos :R')
             
# Objetivo: hacer graficas de barras en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. graficas de barras con base graphics
# 2. graficas de barras con ggplot2

# cargando los datos

data("mtcars")

# viendo los datos

head(mtcars)

# generando tabla agrupada

table(mtcars$cyl)


# grafica de barras basica

barplot(table(mtcars$cyl))

# editando grafica de barras


barplot(table(mtcars$cyl),
             horiz = 'TRUE',
             col='green',
             border = 'blue',
             main = 'Gráfica de Barras',
             sub = 'Subtitulo',
             xlab = 'Cilindros',
             ylab = 'cantidad')


# cargar ggplot2

# install.packages("ggplot2")
library(ggplot2)

# grafica de barras

ggplot(data = mtcars,
       mapping = aes(x = factor(cyl))) +
      geom_bar() + 
      coord_flip()


# guardando grafica en variable

p<- ggplot(data = mtcars,
           mapping = aes(x = factor(cyl),
                         fill = factor(gear)))

# stacked bar chart

p + geom_bar(position = 'stack' , stat = 'count')

# dogde bar chart

p + geom_bar(position = 'dodge' , stat = 'count')

# stacked + percent barchart    

p + geom_bar(position = 'fill' , stat = 'count')
