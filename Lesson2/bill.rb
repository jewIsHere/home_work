puts "This program will created your bill!"
puts "(enter stop if you are finish adding goods)"
bill = {}

loop do
  puts "Enter the product name: "
  name = gets.strip.downcase
  break if name == 'stop'
  puts "Enter the unit price: "
  unit_price = gets.chomp.to_f
  puts "Enter the product quantity: "
  quantity = gets.chomp.to_f
  bill[name] = { unit_price: unit_price, quantity: quantity }
end

total_price = 0

puts "Your purchase invoice!"
puts "Title UnitPrice Quantity Total"
bill.each do |name, value|
  total = value[:unit_price] * value[:quantity]
  puts "#{name}\t #{value[:unit_price]}\t #{value[:quantity]}\t #{total}"
  total_price += total
end

 puts "Total price: \t #{total_price}"
