def main():
    print ("Convertidor de txt a HTML")
    aOrigen=input("Ingrese el nombre del archivo -> ")
    aDestino=aOrigen.replace(".txt", ".html")
    encabezado=''' <html>
    <head>
    <title> {titulo} </title>
    </head>
    <body>
    <h1>{titulo}</h1>
    '''
    pie='''
    </p>
    </body>
    </html>
    '''
    with open (aOrigen, "r", encoding="utf8") as fuente:
        titulo=fuente.readline()
        texto=fuente.read()
    encabezado=encabezado.format(titulo=titulo)
    textohtml="<p><br/>" + texto.replace(".\n\n", ".\n<br/></p>\n<p>\n")
    textohtml=textohtml.replace(".\n",".\n<br/>\n")
    textohtml=textohtml.replace(".\n",",\n<br/>\n")
    htmlCompleto= "".join([encabezado,textohtml,pie])

    with open(aDestino, "w+", encoding="utf8") as destino:
        destino.write(htmlCompleto)


main()
