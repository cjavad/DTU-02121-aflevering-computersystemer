# Implement polynomial multiplication
# With only addition and subtraction
def mult_with_11(a):
    t = a + a
    b = t
    t = t + t
    t = t + t
    t = t + b
    return t + a

def div_with_5(a):
    c = 0
    while a > 0:
        c += 1
        a -= 5
    return c

def pop_1(a, p1, p2):
    if a < 2: return a
    return div_with_5(mult_with_11(p1)) - p2

def pop_not_recursive(a):
    p1 = 1
    p2 = 0
    c = 0

    while c < a:
        c += 1
        p0 = pop_1(c, p1, p2)
        p2 = p1
        p1 = p0
    
    return p1


print(pop_not_recursive(1))