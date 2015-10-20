# destructive versus non-destructive
# sort versus sort!

arr = [3,2,1]

# non-destructive
new_arr = arr.sort
p arr      # => [3,2,1]
p new_arr  # => [1,2,3]

# destructive
arr.sort!
p arr      # => [1,2,3]

# ! is just a character you can use on the end
# of a method name. It's not a special operator.

def my_method_!
  p "Hello"
end
my_method_!

