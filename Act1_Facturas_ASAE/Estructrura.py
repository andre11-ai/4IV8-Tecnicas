facturas = {}
cobrado = 0
pendiente = 0
opciones = ''
while opciones != 'T':
    if opciones == 'A':
        clave = input('Introduce el número de la factura: ')
        coste = float(input('Introduce el coste de la factura: '))
        facturas[clave] = coste
        pendiente += coste
    if opciones == 'P':
        clave = input('Introduce el número de la factura a pagar: ')
        coste = facturas.pop(clave, 0)
        cobrado += coste
        pendiente -= coste
    print('Recaudado:', cobrado)
    print('Pendiente de cobro: ', pendiente)
    opciones = input('¿Quieres añadir una nueva factura (A), pagarla (P) o terminar (T)? ')