print "First side: "
a  = gets.chomp.to_f

print "Second side: "
b = gets.chomp.to_f

print "Third side: "
c = gets.chomp.to_f

first_side, second_side, hypotenuse = [a, b, c].sort
rectan_gular = (first_side**2) + (second_side**2) == hypotenuse

if rectan_gular
  puts "It's a rectangular triangel."
elsif rectan_gular && a == b || b == c || c == a
  puts "It's an isosceles right triangle."
elsif a == b && b == c && c == a
  puts "It's an equilateral triangle."
else
  puts "It's another triangle. Do you need help?"
end
