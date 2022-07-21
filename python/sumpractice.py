import math
import matplotlib.pyplot as plt

def sum2(x=[],N=10):
    x_totals = []
    for k in range(len(x)):
        total = 0
        for n in range(N+1):
            total += ((-1)**N)*(x[k]**(2*n))/(math.factorial(2*n))
        
        x_totals.append(total)

    return x_totals
    plt.plot(x,x_totals)
    
sum2(x = range(100), N=10)