#hecho por Andre Eduardo Ayala Sanchez
import numpy as np
import matplotlib.pyplot as plt
import statistics as st

Peso = [7.2, 8.5, 9.8, 6.5, 7.5, 10.1, 11, 11, 11.1, 11.2, 11.3, 11.4, 11.4, 11.7, 12, 12.9, 12.9, 10.3, 9.7, 10.8, 11, 10.2, 10.5, 6.5, 6.3, 7.3, 7.5, 7.9, 8.2]
Altura = [50, 66, 73, 72, 81, 73, 66, 75, 70, 75, 69, 76, 76, 69, 75, 64, 55, 76, 71, 64, 78, 70, 74, 72, 77, 51, 62, 60, 70]
Velocidad = [10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 21.2, 22.6, 19.9, 24.2, 21, 21.4, 21.3, 0, 22.2, 33.8, 27.4, 25.7, 24.9, 23.1, 31.7, 36.3, 38.3, 42.6, 55.4, 0, 58.3, 0]
Color = np.array(["B", "Amar", "Verde", "Verde", "Verde", "Verde", "Blanco", "Amarillo", "NA", "Blanco",
                  "Amarillo", "Blanco", "Verde", "Verde", "Amarillo", "Amarillo", "Blanco", "Amarillo", "Verde",
                  "Verde", "Amarillo", "Amarillo", "Verde", "Verde", "Verde", "Blanco", "Blanco", "Amarillo", "Verde"])






Peso.sort()
Altura.sort()
Color.sort()
Velocidad.sort()
peso_grafica = []
peso_grafica2 = []
alturas_grafica = []
alturas_grafica2 = []
velocidad_grafica = []
velocidad_grafica2 = []
color_grafica = []
color_grafica2 = []
tamaño = 1
largo = len(Peso)
for i in range(1, largo-1):
    if Peso[i] != Peso[i - 1]:
        peso_grafica.append(Peso[i - 1])
        peso_grafica2.append(tamaño)
        tamaño = 1, Altura
        tamaño = tamaño
peso_grafica.append(Peso[largo - 1])
peso_grafica2.append(tamaño)
tamaño = 1
largo = len(Altura)
for i in range(1, largo-1):
    if Altura[i] != Altura[i - 1]:
        alturas_grafica.append(Altura[i - 1])
        alturas_grafica2.append(tamaño)
        tamaño = 1
    else:
        tamaño = tamaño + 1
alturas_grafica.append(Altura[largo - 1])
alturas_grafica2.append(tamaño)
tamaño = 1
largo = len(Velocidad)
for i in range(1, largo-1):
    if Velocidad[i] != Velocidad[i - 1]:
        velocidad_grafica.append(Velocidad[i - 1])
        velocidad_grafica2.append(tamaño)
        tamaño = 1
    else:
        tamaño = tamaño + 1
velocidad_grafica.append(Velocidad[largo - 1])
velocidad_grafica2.append(tamaño)
tamaño = 1
largo = len(Color)
for i in range(1, largo-1):
    if Color[i] != Color[i - 1]:
        color_grafica.append(Color[i - 1])
        color_grafica2.append(tamaño)
        tamaño = 1
    else:
        tamaño = tamaño + 1
color_grafica.append(Color[largo - 1])
color_grafica2.append(tamaño)
fig = plt.figure()
ax = fig.add_subplot(111)
ax.bar(color_grafica, color_grafica2)
plt.xlabel("Colores")
plt.show()
fig = plt.figure()
ax = fig.add_subplot(111)
ax.bar(velocidad_grafica, velocidad_grafica2)
plt.xlabel("Velocidad")
plt.show()
fig = plt.figure()
ax = fig.add_subplot(111)
ax.bar(alturas_grafica, alturas_grafica2)
plt.xlabel("Altura")
plt.show()
fig = plt.figure()
ax = fig.add_subplot(111)
ax.bar(peso_grafica, peso_grafica2)
plt.xlabel("Peso")
plt.show()
plt.pie(color_grafica2, labels=color_grafica, autopct="%0.1f %%")
plt.xlabel("Colores")
plt.show()
plt.pie(velocidad_grafica2, labels=velocidad_grafica, autopct="%0.1f %%")
plt.xlabel("Velocidad")
plt.show()
plt.pie(alturas_grafica2, labels=alturas_grafica, autopct="%0.1f %%")
plt.xlabel("Alturas")
plt.show()
plt.pie(peso_grafica2, labels=peso_grafica, autopct="%0.1f %%")
plt.xlabel("Peso")
plt.show()



print("--------------------------------------------------------------------------------")
print("Media del peso: ", st.mean(Peso))
print("--------------------------------------------------------------------------------")
print("Mediana del peso: ", st.median(Peso))
print("--------------------------------------------------------------------------------")
print("Varianza del peso: ", st.variance(Peso))
print("--------------------------------------------------------------------------------")
print("Desviacion estandar del peso: ", st.stdev(Peso))
print("--------------------------------------------------------------------------------")
print("Media de la velocidad: ", st.mean(Velocidad))
print("--------------------------------------------------------------------------------")
print("Mediana de la velocidad: ", st.median(Velocidad))
print("--------------------------------------------------------------------------------")
print("Varianza de la velocidad: ", st.variance(Velocidad))
print("--------------------------------------------------------------------------------")
print("Desviacion estandar de la velocidad: ", st.stdev(Velocidad))
print("--------------------------------------------------------------------------------")
print("Media de la altura: ", st.mean(Altura))
print("--------------------------------------------------------------------------------")
print("Mediana de la altura: ", st.median(Altura))
print("--------------------------------------------------------------------------------")
print("Varianza de la altura: ", st.variance(Altura))
print("--------------------------------------------------------------------------------")
print("Desviacion estandar de la altura: ", st.stdev(Altura))
print("--------------------------------------------------------------------------------")





