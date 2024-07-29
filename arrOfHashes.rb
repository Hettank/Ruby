hashes = [
  { id: 1, name: 'Het', email: 'h@gmail.com' },
  { id: 2, name: 'Utsav', email: 'u@gmail.com' }
]

hashhhhh = hashes.map {
  |item|
  [item[:id], item]
}.to_h

puts hashhhhh