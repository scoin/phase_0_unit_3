# U3.W8-9: Reverse Words


# I worked on this challenge by myself

# 2. Pseudocode
#get string
#split into array
#map to new array with words reverse
#join into string
#return


# 3. Initial Solution

def reverse_words(to_reverse)
	to_reverse.split(' ').map{|word| word.reverse}.join(' ')
end


# 4. Refactored Solution

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert(test_num, message)
	if yield
		puts "#{test_num}: PASS"
	else
  		puts "#{test_num}: FAILED #{message} " 
  	end
end

def random_word(length = 5)
  rand(36**length).to_s(36)
end

word = random_word
word1= random_word
word2 = random_word

assert(1, "reverse_words does nothing to an empty string") { reverse_words('') == '' }
assert(2, "reverses a single word") {reverse_words(word) == word.reverse}
assert(3, "reverses two words") {reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}"}
assert(4, "reverses a sentence") {reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB" }


# 5. Reflection 
#While the code here is very easy, the practice with assert was much needed. I tried to model
#the one in JS that I did last week, with the test number and message. It went well and I
#can see how this could be preferable to driver code in certain circumstances, and preferable
#to rspec for brevity.