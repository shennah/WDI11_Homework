loop do 
	puts "1) Addition"
	puts "2) Subtraction"
	puts "3) Multiplication"
	puts "4) Division"
	puts "5) Square Root"
	puts "6) Exponents (power of)"
	puts "7) Exit calculator"
	print "Please select a number from the menu: "

	menuChoice = gets.to_i
	
	if menuChoice == 1
		puts "Please enter the values you'd like to add"
		num1 = gets.to_i
		num2 = gets.to_i
		puts "Your final number is #{num1 + num2}"
	end

	if menuChoice == 2
		puts "Please enter the numbers you'd like to subtract"
		num1 = gets.to_i
		num2 = gets.to_i
		puts "Your final value is #{num1 - num2}"
	end

	if menuChoice == 3
		puts "Please enter the numbers you'd like to multiply"
		num1 = gets.to_i
		num2 = gets.to_i
		puts "Your final value is #{num1*num2}"
	end	

	if menuChoice == 4
		puts "Please enter the numbers you'd like to divide"
		num1 = gets.to_i
		num2 = gets.to_i
		puts "Your final value is #{num1.to_f/num2.to_f}"
	end

	if menuChoice == 5
		puts "Please enter the number you'd like the square root of"
		num1 = Math.sqrt(gets.to_i)
		puts "Your square rooted value is #{num1}"
	end

	if menuChoice == 6
		puts "Plesae enter the number you'd like to exponentiate."
		num1 = gets.to_i
		num2 = gets.to_i
		puts "Your result is #{num1**num2}"
	end

	if menuChoice == 7
		break
	end
end