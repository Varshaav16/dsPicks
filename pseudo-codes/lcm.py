def gcd(a: int, b: int) -> int :
    if a == 0:
        return b
    return gcd(b % a, a)
 
def lcm(a: int, b: int) -> int:
    return (a / gcd(a,b))* b