hash1 = { a: 1, b: 2 }
hash2 = { b: 1, d: 2 }

mergedHash = hash1.merge(hash2) {
  |key, old_val, new_val|
  old_val + new_val 
}

puts mergedHash