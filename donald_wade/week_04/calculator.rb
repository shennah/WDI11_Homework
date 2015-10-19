# Menu
# choose from the Menu
# Enter numbers to perform operation
# show user the result
# keep going until user chooses to quit

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def power(num1, num2)
  num1 ** num2
end

def root(num1)
  Math.sqrt(num1)
end

hash_of_symbols = Hash[
  "*", "multiplication",
  "/", "division",
  "+", "addition",
  "-", "subtraction",
  "**", "exponent",
  "sq", "square root",
]

puts hash_of_symbols

loop do
  puts 'Which function would you like to perform today?'
  puts "Enter '*' for multiplication"
  puts "Enter '/' for division"
  puts "Enter '+' for addition"
  puts "Enter '-' for subtraction"
  puts "Enter '**' for exponent"
  puts "Enter 'sq' for square root"
  puts "Enter 'q' to quit"

  action = gets.strip
  puts action.class

  if action.strip.downcase == "q"
    break
  end

  puts "You've chosen to do #{hash_of_symbols[action]}"

  if action != "sq"

  print "Please enter your first number: >> "
  num1 = gets.to_i

  print "Please enter your second number: >> "
  num2 = gets.to_i

  puts "Your first number is #{num1}"
  puts "And your second number is #{num2}"

  if action == "*"
    result = multiply(num1, num2)
  elsif action == "/"
    result = divide(num1.to_f, num2.to_f)
  elsif action == "+"
    result = add(num1, num2)
  elsif action == "-"
    result = subtract(num1, num2)
  elsif action == "**"
    result = power(num1, num2)
  end
  puts "#{num1} #{action} #{num2} is #{'%.2f' % result}"
  elsif action == "sq"
    puts "Let me have your number"
    num1 = gets.to_i
    result = root(num1)
    puts "The square root of #{num1} is #{result}"
  end
end








# if user_input.downcase == 'q'
#   break
# end
