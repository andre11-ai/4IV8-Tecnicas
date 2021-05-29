import pickle
from serializarobjetos import Persona
archivo_apertura = open("archivoObjetosBinario.dat", "rb")
lista = pickle.load(archivo_apertura)
archivo_apertura.close()
for p in lista:
# print(p) #imprime de forma hexadecimal los objetos
    p.imprimeInformacion()
