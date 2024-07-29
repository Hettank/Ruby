hash = { a: 2, b: 3 }

transformedHash = hash.map {
  |key, value|
  [key, value * 2]
}.to_h

puts transformedHash
