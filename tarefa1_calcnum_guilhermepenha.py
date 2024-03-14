def fatorial (x):
    if x == 0:
        return 1
    else:
        return x*fatorial(x-1)
        
def e_x (x):
    soma = 0
    for count in range (5):
        soma += 1 / fatorial(count) * x**count
    return soma

expoente = int(input("digite o expoente: "))
resultado = e_x(expoente)
print(f"o resultado é {resultado :.10f}")

