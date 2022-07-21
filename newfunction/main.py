from math import factorial


def function1(n =100):
    sum = 0
    for i in range(1,n+1):
        sum += 1/n**2
    return sum

a = function1(n=100)
print(a)

def function2(x=[],N=1,n=10):
    sum=0
    for p in range(0,n+1):
        sum += (-1**N*x**(2*n))/factorial(2*n)
    return sum

b = function2(x,N=2,n=100)
print(b)