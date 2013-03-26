#Looping the calculator in order to use it numerous times
def re_do
	puts "To use calculator again press 'y'. If not, press any key."
	gets.chomp.downcase == "y"
end

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

def square_root (x)
	puts "The square root of #{x} is #{Math.sqrt(x)} "
end

def exponent (x,y)
	puts "#{x} raised to the power of #{y} is #{x**y}"
end
	

begin
	#Introduction to calculator
	puts "Welcome to Calculator"

	#Choosing calculator type (simple or advanced)
	puts "To choose type of calculator type:"
	puts "Simple (s)"
	puts "Advanced (a)"
	calc_type = gets.chomp.to_s.downcase


if calc_type == "s"

# Simple Calculator

	#Choosing operation to be performed (* / + -)
	puts "To choose type of operation to be performed type:"
	puts "Addition (a).\nSubtraction (s).\nMultiplication (m).\nDivision (d)."
	op_type = gets.chomp.to_s.downcase
	exit if op_type ="q"

	#Inputting two values
	puts "Enter first number: "
	num1 = gets.chomp.to_i

	while true
		puts "Enter second number: "
		num2 = gets.chomp.to_i
		if (op_type == "d" && num2 == 0)
			puts "Divisor cannot be 0"
		else
			break
		end
	end

elsif calc_type == "q" then exit 

elsif calc_type == "a"

# Advanced Calculator

	puts "To choose type of operation to be performed type: "
	puts "Square Root (w).\nExponent (e)."
	op_type = gets.chomp.to_s


	if op_type == "w"
		
		puts "Enter number: "
		num1 = gets.chomp.to_i

	elsif op_type == "q" then exit 
	
	elsif op_type == "e"
		
		#Inputting two values
		puts "Enter base number: "
		num1 = gets.chomp.to_i

		puts "Enter exponent number: "
		num2 = gets.chomp.to_i

	else
		puts "Please select w or e"
	end

else calc_type != "s" || "a" || "q"
	puts "Invalid input. Please type s for the Simple Calculator or a for the Advanced Calculator"
# we have to loop it to be true to out message
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
		when "w"
			puts square_root(num1)
		when "e"
			puts exponent(num1,num2)
		else 
			puts "Invalid input. Please try again."
	end

end while re_do


		



