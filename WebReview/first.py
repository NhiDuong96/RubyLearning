def fibo(n):
    result = []
    a, b = 0, 1
    while a < n:
        #print(a, end=" ")
        result.append(a)
        a, b = b, a + b
    return result


def f(value, *args, **kwargs):
    print(value)
    print(args)
    print(kwargs)


kw = {'a': 1, 'b': 2}
ar = (1, 2, 3)
f(*ar, **kw)


def concat(*args, sep='/'):
    return sep.join(args)


print(concat('n', 'h', 'i', sep=' '))
