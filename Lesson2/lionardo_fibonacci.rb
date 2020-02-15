fibo_num = [0, 1]
num = 0

fibo_num << num while (num = fibo_num[-1] + fibo_num[-2]) <= 100

puts fibo_num
