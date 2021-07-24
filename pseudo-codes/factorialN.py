def factorial(n: int) -> int :
    fact = 1
    for elem in range (1, n+1):
        fact *= elem
    return fact

print(factorial(int(input())))