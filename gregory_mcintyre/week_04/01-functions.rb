def hello1
  puts "Hello"
end

hello1 # called like this

puts "--------------------------"

def hello2(name)
  puts "Hello #{name}"
end

hello2 "Wolf"    # Called this way
hello2("Wolf")   # Or this
#hello2 # forgot to pass the right number of arguments, error

puts "--------------------------"

# A function with a default parameter
# This won't throw an error in the case that you
# don't pass a parameter in
def hello3(name = "World")
  puts "Hello #{name}"
end

hello3           # OK
hello3("Wolf")   # OK

puts "--------------------------"

# keyword arguments

def hello4(name:, greeting:)
  puts "#{greeting} #{name}"
end

#hello4                # error, argument name not provided
hello4(name: "Wolf", greeting: "Hello")   # OK

puts "--------------------------"

# keyword arguments with defaults
def hello4(name: "World")
  puts "Hello #{name}"
end

hello4                # OK
hello4(name: "Wolf")  # OK

puts "--------------------------"

# return values

def sum1(a, b, c)
  return a + b + c
end

def sum2(a, b, c)
  a + b + c            # Ruby always returns the last expression
end

p sum1(1, 2, 3)   # => 6
p sum2(1, 2, 3)   # => 6

def greater(a, b)
  if a > b            # this whole if is an expression
  	a
  else
  	b
  end
end

p greater(3, 4)   # => 4

