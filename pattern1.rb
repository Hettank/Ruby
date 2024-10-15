rows = 5
rows.times {
  |i|
  puts '*' * (i + 1)
}

puts "\nNew Pattern\n"
rows.downto(1) {
  |i|
  puts "*" * i
}

# rows.times do |i|
#   puts ' ' * (rows - i - 1) + '*' * (2 * i + 1)
# end