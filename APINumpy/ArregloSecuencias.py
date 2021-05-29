import numpy as np
mat1=np.arange(10,30,5)
mat2=np.arange(0,2,0.2)
print(mat1)
print(mat2)
mat3=np.arange(0,100,1).reshape(10,10)
print(mat3)
print(np.arange(10000).reshape(100,100))

# nunmero de saltos de secuencia de forma precisa con linspace

mat1=np.linspace(0,1,9,retstep=True) # inicio en cero, termina en 1 y el 9 es que pondrá nueve elementos entre 0 y 1
print("linspace: ", mat1)