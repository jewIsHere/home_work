puts "Please, Write your name: "
n = gets.chomp.capitalize!

puts "Please, Write your height: "
h = gets.chomp.to_f

ideal_weight = (h - 110) * 1.15

if ideal_weight > 0
  puts "Hi #{n}, You have an ideal weight to equal #{ideal_weight.to_f}."
else
  puts "Your weight optimal."
end
