#Introduction to calculator
puts "Welcome to Calculator"

#Choosing calculator type (simple or advanced)
puts "Choose type of calculator: "
puts "Simple (type s)"
puts "Advanced (type a)"
calc_type = gets.chomp.to_s

#Choosing operation to be performed (* / + -)
puts "Choose type of operation to be performed: "
puts "Addition (type a).\nSubtraction (type s).\nMultiplication (type m).\nDivision (type d)."
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
	x / y
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

		



