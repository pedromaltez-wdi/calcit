#Looping the calculator in order to use it numerous times
def re_do
	puts "To use calculator again press 'y'. If not, press any key."
	gets.chomp.downcase == "y"
end

begin
	#Introduction to calculator
	puts "Welcome to Calculator"

	#Choosing calculator type (simple or advanced)
	puts "To choose type of calculator type:"
	puts "Simple (s)"
	puts "Advanced (a)"
	calc_type = gets.chomp.to_s

	#Choosing operation to be performed (* / + -)
	puts "To choose type of operation to be performed type:"
	puts "Addition (a).\nSubtraction (s).\nMultiplication (m).\nDivision (d)."
	op_type = gets.chomp.to_s

	#Inputting two values
	puts "Enter first number: "
	num1 = gets.chomp.to_i

	puts "Enter second number: "
	num2 = gets.chomp.to_i

	#Declaring methods
	def addition (x,y)
		puts "Your operation is: #{x} + #{y}"
		x + y
	end

	def subtraction (x,y)
		puts "Your operation is: #{x} - #{y}"
		x - y
	end

	def multiplication (x,y)
		puts "Your operation is: #{x} * #{y}"
		x * y
	end

	def division (x,y)
		puts "Your operation is: #{x} / #{y}"
		puts x / y
	end

	#Operations
	case op_type
		when "a"
			puts addition(num1,num2)	
		when "s"
			puts subtraction(num1,num2)
		when "m"
			puts multiplication(num1,num2)
		when "d"
			puts division(num1,num2)
		else 
			puts "Invalid input. Please try again."
	end

end while re_do


		



