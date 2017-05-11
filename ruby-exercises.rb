# Here is a collection of some of my favorite Ruby exercises!

# This code accepts an integer as an argument through the terminal. The result is a pyramid made of ****!

height = ARGV[0].to_i
output = ""
height.times do |i|
  output << " " * ((height - i) - 1)
  output << "*" * (i+=1) * 2
  output << "\n"
end

puts output


puts "------------------------------------------------------------"
# A method that prints fizz for multiples of 3, buzz for multiples of 5, and fizzbuzz for multiples of both numbers!

def fizz_buzz
  (1..100).each do |number|
    if (number % 3 == 0 && number % 5 == 0)
        "FizzBuzz"
    elsif number % 5 == 0
        "Buzz"
    elsif number % 3 == 0
        "Fizz"
    else
        number
    end
  end
end

puts fizz_buzz


puts "------------------------------------------------------------"
# Here we have a class of people who can sing and riot!

class Person
  attr_accessor :name, :hair_color

  @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def save
    @@everyone << self
  end

  def sing
    "#{@name} is singing."
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each { |person| puts "#{person.name} is rioting!" }
  end
end

sandy = Person.new("Sandy", "blonde")
joe = Person.new("Joe", "brown")
tim = Person.new("Tim", "black")

sandy.save
joe.save
tim.save

Person.riot

puts sandy.sing

