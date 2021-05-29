def suma(num1, num2):
    return num1 + num2


def resta(num1, num2):
    return num1 - num2


def multiplica(num1, num2):
    return num1 * num2


def divide(num1, num2):
    try:
        return num1 / num2
    except ZeroDivisionError:
        print ("No se puede dividir entre 0")
        return "operación inválida"
    except:
        print("otro error")
    finally:
        print("este es el método finally en división")

while True: #el ciclo es verdadaro mientra siga cayendo una excepción
    try:
        op1 = (int(input("Introduce el primer número: ")))

        op2 = (int(input("Introduce el segundo número: ")))
        break # rompe el ciclo while cuando se obtuvo los valores correctos

    except ValueError as objeto:
        print ("debes introducir valores numéricos")
        print(objeto.args)
        print(objeto.__doc__)
    else:
        print ("ejecutandoelse")
operacion = input("Introduce la operación a realizar (suma,resta,multiplica,divide): ")

if operacion == "suma":
    try:
        print(suma(op1, op2))
    except:
        print("error")
    else:
        print("se ejecuta el else porque no hubo excepción")

elif operacion == "resta":
    print(resta(op1, op2))

elif operacion == "multiplica":
    print(multiplica(op1, op2))

elif operacion == "divide":
    print(divide(op1, op2))

else:
    print("Operación no contemplada")

print("Operación ejecutada. Continuación de ejecúción del programa ")