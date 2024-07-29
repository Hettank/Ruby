words = ["apple", "banana", "pear", "fig", "plum", "cherry"]

groupedHash = {}

words.each {
  |word|
  length = word.length
  groupedHash[key = word.length] = groupedHash[length == word.length]
}

words.each {
  |word|
  length = word.length
  groupedHash[length] ||= []
  groupedHash[length] << word
}

puts groupedHash