import numpy as np
mceros=np.zeros((3,4))
print(mceros)
munos=np.ones((2,3,4),dtype=np.int16)
print(munos)
print ("numero de dimensiones del arreglo ", munos.ndim)
print("tamaño de cada una de las dimensiones del arrelo ", munos.shape)
print("Número de elementos del array ", munos.size)
print ("tipo de elemento del objeto ", munos.dtype)
print("Tamaño en bytes de cada elemento del arreglo " , munos.itemsize)
mvacia=np.empty((2,3))
print(mvacia)