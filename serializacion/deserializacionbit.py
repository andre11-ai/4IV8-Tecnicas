import pickle
fichero_binario = open("archivobinario", "rb")
listatexto = pickle.load(fichero_binario)
print(listatexto)