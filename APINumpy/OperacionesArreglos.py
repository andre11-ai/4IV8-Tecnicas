import numpy as np

a= np.array([20,30,40,50])
b= np.arange(4)
c=a-b
print(c)
print(b**2)
print(10*np.sin(a))
print(a<35)
A=np.array([[1,1],[0,1]])
B=np.array([[2,0],[3,4]])
print("Multimplicación de elemento por elemento : " , A*B)
print("Multiplicación euleriana, fila por columnas sy su suma para tener el elemento: ", A@B)
print("Misma que la línea anterior : ", A.dot(B))

