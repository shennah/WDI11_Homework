# Symbols

# This is a string

x = "Hello World"

# This is the variable name, stored as a value

y = :x

"Hello World"
:HelloWorld

# Why would we want to store variable names 
# as values?

p [].methods.first.class # => Symbol

# This is called introspection. I call it
# poking around at objects during run time.

# We also use Symbols a lot in Hash objects.

