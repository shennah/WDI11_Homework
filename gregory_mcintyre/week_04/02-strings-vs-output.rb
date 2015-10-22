arr1 = [1,2,3]
puts "My array is #{arr1.each do |elem| print elem end}"

# Printing text on the terminal is a separate
# task to evaluating the result of an expression.

# The Ruby interpreter:

# 1) Sees the argument to puts is a string
# 2) Sees that the string has a templatey bit in it 
# 3) Runs the Ruby inside the string in order to
#    calculate what it needs to put in that position
#    in the string.
# 3a) While running this code, things are printed
#     to the terminal.
# 3b) The value [1,2,3] is returned from the each
#     method.
# 4) The value [1,2,3] is turned into a string with .to_s
# 5) The value "[1, 2, 3]" is inserted into position
#    in the string.
# 6) The final resulting string is printed using puts.

