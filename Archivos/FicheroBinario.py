# se antecede un r al método open, para deshabilitar las secuencias de escape
f= open (r"clientes.dat","wb+")
# se antepone un b al método write, para ser explícitos que son bytes

# cada columna debe tener 10 caracteres, incluyendo espacios
f.write(b"Armando   Alvarez   Galvan    1234.39    AA32      ")
f.write(b"Julia     Hernandez Perez     1089.00    JH11      ")
f.write(b"Ernesto   Cordova   Martinez  1890.77    EC01      ")
f.write(b"Maria     Juarez    Ortega    987.32     MJ01      ")

suma =0
col = int(input("Introducir el número de la columna a extraer (1-4): "))
while col!=1 and col!=2 and col!=3 and col!=4:
    col =int(input("Dato erróneo, Introducir el número de la columna a extraer (1-4): "))
num = int(input("Intoduce el número de registros a extraer: "))
for i in range(num):
    if i == 0:
        f.seek((col-1)*10,0)
    else:
        f.seek(((col-1)*10 + 50 * i),0)
    dato = f.read(10)
    if dato !=b"":
        print (dato)
        if col == 4:
            suma += float(dato)
    else:
        print ("Se llegó al final del fichero")
        break
if col == 4:
    print ("la suma de los cobrado es ",suma)
f.seek(0,0)
print("contenido del archivo en forma de lista es: ",list(f))
f.close()
