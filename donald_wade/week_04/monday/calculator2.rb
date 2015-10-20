hash_of_symbols = Hash[
  "*", "multiplication",
  "/", "division",
  "+", "addition",
  "-", "subtraction",
  "**", "exponent",
  "sq", "square root",
]

def doSum(num1, operation, num2)
  result = num1.send(operation, num2)
  puts result
end

loop do
  puts 'Which function would you like to perform today?'
  puts "Enter '*' for multiplication"
  puts "Enter '/' for division"
  puts "Enter '+' for addition"
  puts "Enter '-' for subtraction"
  puts "Enter '**' for exponent"
  puts "Enter 'sq' for square root"
  puts "Enter 'q' to quit"
  operation = gets.chomp

  if operation == "q"
    break
  end

  if operation != "sq"
    print "What is your first number? >> "
    num1 = gets.to_i
    print "What is your second number? >> "
    num2 = gets.to_i
    doSum(num1, operation, num2)
  elsif operation == "sq"
    print "Let me have your number: >> "
    num1 = gets.to_i
    result = Math.sqrt(num1)
  end
  puts result
end
