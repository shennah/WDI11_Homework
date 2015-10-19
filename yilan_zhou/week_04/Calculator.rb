# 19/10/2015 homework
=begin
https://gist.github.com/wofockham/2752aa06121df7f3024c
Calculator
Explanation

You will be building a calculator. A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
Specification:

A user should be given a menu of operations
A user should be able to choose from the menu
A user should be able to enter numbers to perform the operation on
A user should be shown the result
This process should continue until the user selects a quit option from the menu
Phase 1

Calculator functionality
Calculator should be able to do basic arithmetic (+,-, *, /)
Phase 2

Advanced Calculator functionality
Calculator should be able to do basic arithmetic (exponents, square roots)
Phase 3

User should be given a menu of Calculator functionality
User should be able to choose intended functionality



def calculator(operator)
	puts "Inter the first value"
	a = gets.chomp.to_f
	puts "Inter the second value"	
	b = gets.chomp.to_f
	case operator
	when "add"
		return a+b
	when "minus"
		a-b
	when "multiply"
		a*b
	when "divide"
		a/b
	when "exponents"
		a**b
	when "roots"
		a**(1/b)
	when "quit"
		isRunning = false
	else
		"check operator, insert one of below \n add, minus, multiply, divide, exponents, roots"
	end
end

=end

isRunning = true
puts "Calculator"
while isRunning
	puts "Type in one of operator below to start, type in 'quit' to end process"
	puts "add, minus, multiply, divide, exponents, roots"
	operator = gets.chomp
	if operator == "quit"
		isRunning = false
	else
		puts "Inter the first value"
		a = gets.chomp.to_f
		puts "Inter the second value"	
		b = gets.chomp.to_f
		case operator
		when "add"
			result = a+b
		when "minus"
			result = a-b
		when "multiply"
			result = a*b
		when "divide"
			result = a/b
		when "exponents"
			result = a**b
		when "roots"
			result = a**(1/b)
		when "quit"
			isRunning = false
		else
			"check operator, insert one of below \n add, minus, multiply, divide, exponents, roots"
		end
	end
	puts "#{operator} result is #{result}"
end

