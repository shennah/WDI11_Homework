def greet
  p "Please enter your name"
  name = gets
  puts "hello #{name}"
end
greet

def operator
p "Enter the operator you want to perform:"
p "1 to add,
   2 to subtract,
   3 to multiply,
   4 to divide
   5 to quit"
operation_selection = gets.to_i
p "Enter the two values to operate..."
  a = gets.to_i
  b = gets.to_i
case
when operation_selection == 1 
    puts a + b
when operation_selection == 2
    puts a - b
when operation_selection == 3
    puts a * b
when operation_selection == 4
    puts a / b
else
    exit
end
end

operator



