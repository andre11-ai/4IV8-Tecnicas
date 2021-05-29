import Rectangulo
import Triangulo
import Cuadrado

def __init__(self):
    self.h=h
    self.b=b


print("Calcular Áreas de figuras Geométricas.\n")
print("1.Cuadrado.\n2.Triángulo.\n3.Rectángulo.\n ")

x = int(input("Escoja la figura: "))

if x == 1:
    L = int(input('Ingrese el lado: '))
    Cuadrado.area_cuadrado(L)


if x == 2:
    b = int(input('Ingrese la base: '))
    h = int(input('Ingrese la altura: '))
    Triangulo.area_triangulo(b, h)


if x == 3:
    b = int(input('Ingrese la base: '))
    h = int(input('Ingrese la altura: '))
    Rectangulo.area_rectangulo(b, h)



def setb(self):
    self.__b= b
def getb(self,b):
    return self.__b
def seth(self):
    self.__h= h
def geth(self,h):
    return self.__h