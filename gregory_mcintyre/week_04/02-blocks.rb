# In JS, we often passed anonymous functions.

# var buttons = $("button");
# buttons.click(function(elem){
#    // elem was clicked
# });

# In Ruby, this is so common that we use
# a simpler syntax for it.
#
# buttons.click do |elem|
#   # elem was clicked
# end

# each is a method that "takes a block"
[1,2,3].each() do |elem|
  p elem
end

# inject is a method that "takes a block"
p [1,2,3].inject(10) { |sum, elem| sum + elem }

# File.open is a method that "takes a block"
File.open("/etc/passwd") do |file|
  puts file.readline
  puts file.readline
  puts file.readline
end

# "block" is short for "block of code" and is
# the same concept as an anonymous function


