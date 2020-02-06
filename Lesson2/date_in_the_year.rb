day = 0

loop do
  puts "Enter day: "
  day = gets.to_i
  break if day.between?(1, 31)
  puts "ERROR, You need to write the correct day value!"
end

month = 0

loop do
  puts "Enter month: "
  month = gets.to_i
  break if month.between?(1, 12)
  puts "ERROR, You need to write the correct month value!"
end

year = 0

loop do
  puts "Enter year: "
  year = gets.to_i
  break if year > 0
  puts "ERROR, You need to write the correct year value!"
end

if ((year%4 == 0) && (year%100 != 0)) || (year % 400 == 0)
  jewish = 29
else
  jewish = 28
end

months = [31, jewish, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

requested_date = months.take(month - 1).inject(0, :+)

puts "Date #{month}/#{day}/#{year} assigned a serial number from the beginning of the year: #{requested_date}."
