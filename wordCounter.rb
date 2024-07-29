# Write a program that counts the frequency of each word in a given string and stores the results in a hash.

string = "Hello World hello hello"
words = string.split

emptyHash = Hash.new(0) # it will initialize hash with 0, how 0 stored in this...?

words.each {
  |word|
  emptyHash[word] += 1
}

puts emptyHash

puts emptyHash[:sadf] # if we try to access non existing key in hash we got 0 in the output