
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

calendar = {
  january: 31,
  february: jewish,
  march: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}

calendar.each { |m, d| puts d }

