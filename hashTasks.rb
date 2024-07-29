data = {
  user1: { name: "alice", age: 30, city: "New York" },
  user2: { name: "bob", age: 25, city: "Los Angeles" },
  user3: { name: "charlie", age: 35, city: "Chicago" }
}

# Task 3

newData = data.map {
  |key, value|
  capitalized = value[:name].capitalize
  increment = value[:age] += 1
  upcases = value[:city].upcase
  
  [key, [capitalized, increment, upcases] ]

}.to_h

# Task 2

people = [
  { name: "Alice", age: 30, city: "New York" },
  { name: "Bob", age: 25, city: "Los Angeles" },
  { name: "Charlie", age: 35, city: "Chicago" },
  { name: "David", age: 25, city: "New York" }
]

groupedBy = people.group_by { |person| person[:age] }

inventory = {
  store1: {
    items: ["apple", "banana", "orange"], location: "New York"
  },
  store2: {
    items: ["pear", "peach", "plum"], location: "Los Angeles"
  },
  store3: {
    items: ["cherry", "grape", "lemon"], location: "Chicago"
  }
}

inventory.map {
  |key, value|
  value.map {
    |val|
    val.each {
      |item|
      puts item
    }
  }
}

puts groupedBy.inspect

puts newData