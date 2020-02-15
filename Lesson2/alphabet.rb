alphabet = ("а".."я").to_a

alphabet.insert(6, "ё")

puts alphabet

vowel = "аеёиоуыэюя"
v_hash = {}

alphabet.each.with_index(1) do |v, i|
  v_hash[v] = i + 1
  if vowel.include?(v)
    puts "#{v} - #{i}"
  end
end
