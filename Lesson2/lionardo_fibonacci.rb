fibo_num = [0, 1]

num = 0

loop do
  num = fibo_num[-1] + fibo_num[-2]
  break if num > 100
  fibo_num << num
end

puts fibo_num
