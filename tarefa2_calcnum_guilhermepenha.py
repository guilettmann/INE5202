def fatorial(x):
    if x == 0:
        return 1
    else:
        return x * fatorial(x - 1)

def e_x(x):
    soma = 1
    count = 0
    while True:
        count += 1
        soma_anterior = soma
        soma += 1 / fatorial(count) * x ** count
        if (soma - soma_anterior) <= 1e-15:
            break
    return soma

expoente = int(input("Digite o expoente: "))
resultado = e_x(expoente)
print(f"O resultado é {resultado:.15f}")