# Hecho por Ayala Sanchez Andre Eduardo 4IV8
# Profesor ALVAREZ GALVAN ARMANDO
# Grupo 4IV8

import mysql.connector
from mysql.connector import errorcode

DB_HOST = '127.0.0.1'
DB_USER = 'root'
DB_PASS = 'Root'
DB_NAME = 'kardex'

try:
    miconexion = mysql.connector.connect(user=DB_USER, password=DB_PASS, host=DB_HOST, database=DB_NAME)  # Conectar a la base de datos
    cursor = miconexion.cursor()
    print("Conexión exiosa.")
    def menuPrincipal():
        continuar = True
        while (continuar):
            opcionCorrecta = False
            while (not opcionCorrecta):
                print("Elige una opción:")
                print("1. Dar de alta")
                print("2. Modificar ")
                print("3. Consular los alumnos")
                print("4. Consular los nombre de carreras")
                print("5. Dar de baja ")
                print("6. Salir.")
                opcion = int(input("Seleccione una opción: "))

                if opcion < 1 or opcion > 6:
                    print("Elija una opción válida.")
                elif opcion == 6:
                    continuar = False
                    print("Gracias por utilizar este metodo UwU"
                          "Profe digame que si esta bien UnU")
                    break
                else:
                    opcionCorrecta = True
                    ejecutarOpcion(opcion)
    def ejecutarOpcion(opcion):
        if opcion == 1:
            import InsertarBD
        elif opcion == 2:
            import modificarBD
        elif opcion == 3:
            import ConsultarBD
        elif opcion == 4:
            import ConsultarBDnomAP
        elif opcion == 5:
            import  BorrarBD
    menuPrincipal()
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("\nAcceso denegado.")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("\nLa base de datos no existe.")
    else:
        print(err)
finally:
    print("\nSe cerró la conexión a la base de datos.\n")
    cursor.close()  # Cerrar el cursor
    miconexion.close()  # Cerrar la conexión
