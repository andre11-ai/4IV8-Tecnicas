import pickle

class Persona:

    def __init__(self, nombre="",edad=0):
        self.__nombre = nombre
        self.__edad = edad

    def imprimeInformacion(self):
        informacion = "\n Nombre: {} \n Edad: {}".format(self.__nombre, self.__edad)
        print(informacion)
    def setNombre(self,nombre):
        self.__nombre=nombre
    def getNombre(self):
        return self.__nombre
    def setEdad(self,edad):
        self.__edad=edad
    def getEdad(self):
        return self.__edad


persona1=Persona("Armando",40)

persona2=Persona("Alma",34)

persona3=Persona("Juan",50)
personas=[persona1,persona2,persona3]
fichero_binario=open("archivoObjetosBinario.dat","wb")
pickle.dump(personas,fichero_binario)
fichero_binario.close()
del (fichero_binario)