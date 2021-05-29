with open ("EscribirArchivo.txt", "w+", encoding="utf8") as archivo:
    archivo.write("Escribiendo una línea de texto\n")
    datos=archivo.read()
    print("Leyendo archivo completo, después de haber escrito y donde este el puntero: ", datos)
    archivo.seek (0, 0) # primer cero, son los bytes que recorre y el segundo el para indicar que es el incio del archivo
    datos=archivo.read()
    print("Leyendo archivo completo despues de usar seek 0,0: " , datos)
    print("posición donde quedó el puntero:" , archivo.tell()) #función para saber en que posicion está el puntero en el archivo
    archivo.seek(26, 0) # a partir del inicio del archivo, el puntero se posiciona en el byte 30
    datos=archivo.read()
    print ("Leyendo archivo completo despues de usar seek 26,0: ", datos)
    archivo.close()