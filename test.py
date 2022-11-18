def pop(a: int) -> int:
    if a == 0 or a == 1:
        return a
    return (11*pop(a-1))// 5 - pop(a-2)
    

print(pop(6))


def pop_w(a: int) -> int:
    values = [1,2]
    for i in range(2,a):
        values.append((11*values[i-1])//5 - values[i-2])

    return values[-1:]


print(pop_w(6))

mult=0
mult_res = 0
def mult_call():
    global mult_res
    global mult
    mult_res = mult * 11

div = 0
div_res = 0
def div_call():
    global div
    global div_res
    div_res = div // 5


def pop_3(a:int) -> int:
    global div
    global div_res
    global mult_res
    global mult
    prev1 = 0
    prev2 = 1
    i = 2
    check = a - i
    check = check +1
    while check != 0:
        mult = prev2
        mult_call()
        new_val = mult_res
        div = new_val
        div_call()
        new_val = div_res
        new_val = new_val - prev1
        prev1 = prev2
        prev2 = new_val
        i += 1
        check = a - i
        check = check +1
    return prev2


def pop_2(a:int) -> int:
    prev1 = 0
    prev2 = 1
    for _ in range(2,a+1):
        new = (11*prev2) // 5 - prev1
        prev1 = prev2
        prev2 = new
    return prev2

print(pop_2(6))
print(pop_3(6))


def pop_4(a:int):
    prev1 = 0;
    prev2 = 1;
    i = 2
    check = a - i
    check = check +1
    while check != 0:
        prod = prev2 + prev2
        div = prod
        div_call()
        res = prod + div_res;
