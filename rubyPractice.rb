METHODS:

#1. Changes a positive value to negative one
def reverse_sign(an_integer)
  return 0 - an_integer
end
puts reverse_sign(125)
puts reverse_sign(-1)
output:
beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/newTrainee$ ruby rubyPractice.rb
-125
1


# 2.a method that does nothing at all and has no return produces an object - the nil

def do_nothing
	
end
puts do_nothing.class

output:
$ruby output.rb
NilClass

#3. 
def demonstrate_early_return
  return
  puts "You will never see this, because we never get here."
end

puts demonstrate_early_return.class

output:
NilClass

#4.
def add_two(num)
  return num + 2
end
add_two(4)
  
 CALLING A METHOD:
 
#1. methods can accept more than one parameter.

def add(a_number, another_number, yet_another_number)
  a_number + another_number + yet_another_number
end


puts add(1, 2, 3)
output:
6

# 2.
def say_hello(name = "Qui-Gon Jinn")
  "Hello, #{name}."
end
output:
Hello, Qui-Gon Jinn

# 3.Splat operator (*)

#inject method to iterate over arguments

def add(*numbers)
	numbers.inject(0){|sum,number| sum + number}
end

puts add(5,4,3)
puts add(1,2)
puts add(1) 

output:
12
3
1

or

def add(a_number, another_number, yet_another_number)
  a_number + another_number + yet_another_number
end

numbers_to_add = [1, 2, 3] # Without a splat, this is just one parameter
puts add(*numbers_to_add)  

output:
6

#4. 
def add(*numbers)
	numbers.inject(0){|sum,number| sum + number}
end
def add_with_message(message,*numbers)
	"#{message}: #{add(*numbers)}"
end
puts add_with_message("the sum is",1,2,5)

output:
the sum is: 8

#5. 
def add(num1,num2,options={})
	sum=num1+num2
	sum=sum.abs if options[:absolute]
	sum=sum.round(options[:precision]) if options[:round]
end
puts add(5.023,4.562,absolute:true,precision:2,round:true)

output:
9.59

LAMBDAS:

#1. 
l = lambda { "Do or do not" }
puts l.call

output:
Do or do not

#2. lamda with parameters
l=lambda do|string|
	if string == "try"
		return "there's no such things"
	else
		return "Do od do not"
	end
end
puts l.call("try")

output:
there's no such things

#3.  increments any number passed to lambda by 1.

 Increment = lambda { |num| return num += 1} # your lambda between the braces
 puts Increment.call(5)
 
output:

6
BLOCKS:

#1. 
string=gets.chomp
def trial(string)
	yield(string)
end
puts trial(string){|str| puts string + "yes"}

output:
chhaya
chhayayes

#2. 
def calculate(a, b)
  yield(a, b)
end
calculate(5,6){|a,b| puts a * b}

output:
30


MODULES:
#1.
module Greeting
def cheer
	"We won the match"
end
end
class Team
	include Greeting
	def yipee
		"this is an awesome day"
	end
end
puts Team.new.cheer
puts Team.new.yipee
puts Greeting.class
puts Module.superclass
puts Class.superclass

OUTPUT:

