class HashTable
  def initialize(size)
    @size = size
    @table = Array.new(size)
  end

  def put(key, value)
    index = hash(key)
    @table[index] = value
  end

  def get(key)
    index = hash(key)
    return @table[index]
  end

  def hash(key)
    key.hash % @size # '% @size' modulus by size of an array, everytime give different values
  end
end

hash_table = HashTable.new(5)

hash_table.put(:apple, "This is an apple")
puts hash_table.get(:apple)
