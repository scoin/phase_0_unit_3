# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	@width * @height
  end

  def perimeter
  	(@width * 2) + (@height * 2)
  end

  def diagonal
  	Math.sqrt((@width**2).to_f + (height**2).to_f)
  end

  def square?
  	@width == @height
  end
end

# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE
rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20,20)

p rectangle.respond_to?('area') == true
p rectangle.respond_to?('perimeter') == true
p rectangle.respond_to?('diagonal') == true
p rectangle.respond_to?('square?') == true
p rectangle.area == 200
p square.area == 400
p rectangle.perimeter == 60
p square.perimeter == 80
p rectangle.diagonal == 22.360679774997898
p square.diagonal == 28.284271247461902
p rectangle.square? == false
p square.square? == true

# 5. Reflection 
#I am really just picking these at random, but this was kind of a fun one.
#Good review for syntax, I learned "respond_to?" for the first time. I also
#learned (not pictured above) that using .class on a method gives you the
#type it returns - ie. square.area.class returns "Fixnum"
#Mathematically, I had to look up how to determine diagonal - damn pythagorean theorem!

