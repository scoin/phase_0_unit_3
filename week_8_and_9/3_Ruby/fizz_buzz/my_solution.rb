# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution
=begin
def super_fizzbuzz(array)

array.map{|x| 
			  add = ''
			  add = "Fizz" if x % 3 == 0
			  add += "Buzz" if x % 5 == 0
			  x = add if add.length > 0 
			  x
		 }
end
=end
# 4. Refactored Solution
def super_fizzbuzz(array)

array.each_with_index{|x, i|
			 add = ''
			 add = "Fizz" if x % 3 == 0
			 add += "Buzz" if x % 5 == 0
			 array[i] = add if add.length > 0
}
array
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

p super_fizzbuzz(random_input_array(3,100)) == ["Fizz"]*100

p super_fizzbuzz(random_input_array(5,100)) == ["Buzz"]*100

p super_fizzbuzz(random_input_array(15, 100)) == ["FizzBuzz"]*100

p super_fizzbuzz([1,2,3]) == [1,2,'Fizz']

p super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]


# 5. Reflection 

#SUPERFIZZBUZZ! Interesting. Regular fizz buzz is easy enough, but the array
#threw a slight twist. I feel I could make it more elegant, but I did struggle
#to write it in fewer lines. I tried for a fair amount of time.
#I've written this program otherwise, and the logic is simple. In this case, it's 
#structuring the data that is a challenge.