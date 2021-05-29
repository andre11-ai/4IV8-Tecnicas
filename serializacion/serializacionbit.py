import pickle
lista_nombre=["Pedro","Ana","María","Isabel"]
fichero_binario=open("archivobinario","wb")
pickle.dump(lista_nombre,fichero_binario)
fichero_binario.close()
del (fichero_binario) #borrar de la memoria
