# A predicate is a [little] function that returns
# true or false. In Ruby, they often end in ?
# ? is not a special operator, it's just one
# of the characters in the method name.

def is_empty?(a)
  a.length == 0
end

p is_empty?([1,2,3]) # => false
p is_empty?([])      # => true

a.empty?

