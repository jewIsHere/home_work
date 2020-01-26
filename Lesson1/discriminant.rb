puts "Write the value 'a': "
a = gets.chomp.to_f

puts "Write the value 'b': "
b = gets.chomp.to_f

puts "Write the value 'c': "
c = gets.chomp.to_f

d = b**2 - 4 * (a * c)

puts "D = #{d.to_f}"

if d > 0
  sqrtD = Math.sqrt(d)
  x1 = (-b + sqrtD) / (2 * a)
  x2 = (-b - sqrtD) / (2 * a)
  puts "X1: #{x1} and X2: #{x2}"
elsif d == 0
  sqrtD = Math.sqrt(d)
  x3 = -b / (2 * a)
  puts "X1,2: #{x3}"
else
  puts "No roots."
end
