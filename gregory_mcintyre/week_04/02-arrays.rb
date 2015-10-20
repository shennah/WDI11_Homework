puts "-"*70
puts "create"

a = []

# var words = "one two three".split();

words = "one two three".split
words = %w[one two three]
p words

puts "-"*70
puts "read, index"

a = [1,2,3,4,5,6]

# JS: a[100] // undefined, null, NaN

p a[1]       # => 2
p a[1, 2]    # => [2,3]
p a[100]     # => nil
p a[-1]      # => 6
p a[-2, 2]   # => [5,6]
p a[0..1]    # => [1,2]
p a[0...1]   # => [1]

stations = ["Union Square", "6th", "8th"]
p stations[0..2]

p a.first   # => 1
p a.last    # => 6

p a.take(3) # => [1,2,3] AKA a[0,3]
p a.drop(3) # => [4,5,6] AKA a[-3,3]

a.fetch(2)   #=> 3
#a.fetch(100) #=> IndexError

puts "-"*70
puts "read, looping"

arr = [1, 2, 3]
arr.each do |element|
  p element
end

arr.reverse_each do |element|
  p element
end

puts "-"*70
puts "update"

a = [1,2,3,4,5,6]
a.pop     # => 6
a         # => [1,2,3,4,5]
a.shift   # => 1
a         # => [2,3,4,5]

a = [1,2,3]
a.delete_at(1) # => 2  # NOTE: index 1
a              # => [1,3]

a.delete(1)    # => [2,3]

a = [1,1,1,1,2]
p a
a.delete(1) # remove all 1s
p a

temps = [34, 28, nil, 40]
temps.compact # => [34,28,40]

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
arr.uniq      # => [2, 5, 6, 556, 8, 9, 0, 123]

arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
p arr.sort    # => [0, 2, 5, 6, 6, 6, 8, 9, 123, 556, 556]

arr = [1,2,3]
new_arr = arr.map { |element| element * 2 }
p arr      # => [1,2,3]
p new_arr  # => [2,4,6]

arr = [1,2,3,4,5,6]
new_arr = arr.select { |element| element < 3 }
new_arr        # => [1,2]

# reject is the opposite of select

puts "-"*70
puts "read, comparing arrays"

arr1 = [1,2,3]
arr2 = [1,2,3]
# JS: _.isEqual(arr1, arr2); // true
p (arr1 == arr2) # => true
arr1 = [1,2,3,4]
arr2 = [1,2,3]
p (arr1 == arr2) # => false

puts "-"*70
puts "updating, operations on whole arrays"

arr1 = [1,2,3,4]
arr2 = [1,2,3,5]
p arr1 + arr2 # => [1,2,3,4,1,2,3,5] # concatenation
p arr1 - arr2 # => [4]
p arr1 | arr2 # => [1,2,3,4,5]
p arr1 & arr2 # => [1,2,3]

