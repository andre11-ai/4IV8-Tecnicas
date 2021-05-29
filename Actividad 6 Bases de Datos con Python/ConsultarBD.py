import mysql.connector
from mysql.connector import errorcode

DB_HOST = '127.0.0.1'
DB_USER = 'root'
DB_PASS = 'Root'
DB_NAME = 'kardex'

try:
    miconexion = mysql.connector.connect(user=DB_USER, password=DB_PASS,host=DB_HOST,database=DB_NAME)  # Conectar a la base de datos
    cursor = miconexion.cursor()

    query = "SELECT nom_alu FROM malumno order by nom_alu asc"



    cursor.execute(query)
    data = cursor.fetchall()
    print (data)
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Acceso denegado.")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("La base de datos no existe.")
    else:
        print(err)
finally:
    print("Se cerró la conexión a la base de datos.")
    cursor.close()
    miconexion.close()

