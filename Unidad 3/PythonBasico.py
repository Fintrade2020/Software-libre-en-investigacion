# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

3+2
3-2
3*4
1/3
2**3 # potencia

X=9
x=6
y=8

#Ejemplo perpetuidad
C=100
R=0.1
V_P = C/R
V_P

# Tuplas
x = ("C",5)
type(x)

# Listas
y=['C',5]
type(y)

# Tratar de modificar
x[0]=1
y[0]=1

import math as m # se importa el módulo math con el nombre m
m.log(4) #del módulo m, utlizar la función log

x=[1,2,3,4,5]
x[0]
x[1]

# Modificar la lista x
x[0]=2

ejemplo = ['R','g','C',0.8,0.02,100]
ejemplo[2]
print('El valor de', ejemplo[0],'es',ejemplo[3])
print('El valor de una perpetuidad con una tasa de descuento de',ejemplo[3],'es',ejemplo[5]/(ejemplo[3]-ejemplo[4]))

# Operadores para listas

#append agrega un elemento al final de la lista
ejemplo.append('n1')

#count cuenta cuántas veces está en un elemento en la lista
ejemplo.count('R')

#extend permite agregar nuevas listas
ejemplo.extend(['n2',2,'n3',3])

#insert coloca un elemento dentro de una lista en una posición especifica
ejemplo.insert(7,1) #agregar un 1 en la posición 7

#index muestra la posición en que aparece el elemento
ejemplo.index(1)

#pop elimina un elemento de la lista
ejemplo.pop(8) #elimina el elemento de la posición 8

#remove
ejemplo2=[3,6,7,2,0.1,9,7,2]
ejemplo2.remove(2)

#FUNCIONES
def Vp_f(V,r,n):
    "Halla el valor presente de V cuando paga n periodos adelante"
    return V/(1+r)**n
Vp_f(100,0.09,5)
round(Vp_f(100,0.09,5),4)

#CONDICIONALES

estado = "Bueno"
Precio = 25000000
if(estado== "Bueno"):
    print('Pagar:',Precio)
else:
    if(estado == "Regular"):
        print('Pagar:',Precio-2000000)
    else:
        print('No ofrecer')

estado = "Malo"
Precio = 25000000
if(estado == "Bueno"):
    print('Pagar:',Precio)
else:
    if(estado == "Regular"):
        print('Pagar:',Precio-2000000)
    else:
        print('No ofrecer')
        
#Combinar funciones con condicionales

def Compra_carro(estado,Precio):
    'El estado debe ser Bueno, Regular, Malo.'
    if(estado == 'Bueno'):
        print('pagar:',Precio)
    else:
        if(estado == "Regular"):
            print('Pagar:',Precio=2000000)
        else:
            print('No ofrecer')
Compra_carro("Malo",25000000)

# CARGAR BASE DE DATOS
import pandas as pd
base=pd.read_csv('COVID.csv')

# Estadísticas descriptivas
base.head() #primeras 5 observaciones
base.tail() #últimas 4 observaciones
base.describe() #resumen de las variables del dataframe

#Gráficas

import matplotlib.pyplot as plt
import numpy as np

x= np.linspace(-2,2,41) #crea una gráfica de 40 elementos que comienza en 
# -2 y termina en 2 ( es 41 porque cuentan al -2)
y=x**2

plt.plot(x,y)
plt.show() #Elimina el comentario qu eaprece en el plot

#Interés simple vs Interés compuesto

vp=1000
r=0.08
n=20
t=np.linspace(0,n,n+1)
vf_simple=vp*(1+r*t)
vf_compuesto=vp*(1+r)**t
plt.plot(t,vf_simple,'b--',label='Simple')
plt.plot(t,vf_compuesto,'g--',label='Compuesto')
plt.axis([0,15,1000,3000]) #cambiar los límites de los ejes
plt.grid()
plt.title('Simple vs Compuesto')
plt.xlabel('Años') #Nombre del eje x
plt.ylabel('Monto') #Nombre del eje y
plt.legend() #Agregar una leyenda en la gráfica
plt.show()

#Gráfico de Dispersión
datos1=pd.read_excel('aleatorios.xlsx')
plt.grid()
plt.scatter(datos1['X1'],datos1['X2'])

#Histograma
plt.hist(datos1['X1'],density=True)
plt.grid()
plt.title('Histograma de frecuencia relativa')
plt.xlabel('x1')
plt.show()

#Gráfico de pastel

nom='Aprobados','Reprobados','En espera'
porce=[70,25,5]
explo=[0.05,0.05,0.1]
plt.pie(porce,explode=explo,labels=nom,autopct='%1.1f%%',shadow=True,
        startangle=90)
plt.title('Torta experto')

    



