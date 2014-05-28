# U3.W8-9: Triangle Debugger


# I worked on this challenge by myself


# 1. Original Solution
=begin
def valid_triangle?(a, b, c) #removed sum parameter
  sum = 0 #set sum here
  if ((a != 0) && (b != 0) && (c != 0)) #changed || to &&
    if a >= b
      largest = a
      sum += b
    else largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else sum += c
    end
    if sum > largest
      return true #removed quotations
    else return false #removed quotations
    end
  else return false #removed quotations
  end
end
=end

# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?

  #The exact description of bug #1 is wrong number of arguments (3 for 4)
  #This causes it to fail the first test (arity == 3) and also throw an error on every proceeding test

# * what is the exact line number the error is appearing?

  #This is occuring on line 9, where valid_triangle? is declared, in my_solution.rb

# * before you fix the bug, what do you think is causing the error?

  #This is clearly caused in the declaration of valid_triangle? where sum is the 4th expected parameter

# --- Bug 2 ---
# * what is the exact description of the error?
  
  # [0, length, length].permutation(3).all? { |(a,b,c)| valid_triangle?(a,b,c) }.should be_false
       #expected: false value
       #got: true

# * what is the exact line number the error is appearing?

  #The error is occuring on triangle_spec.rb line 17

# * before you fix the bug, what do you think is causing the error?
  #The error is occuring in the opening if statement, where || (or) is used instead of && (and)

# --- Bug 3 ---
# * what is the exact description of the error?
  #valid_triangle? returns false for any impossible triangle
     #Failure/Error: invalid_triangles.all? do |triple|
       #expected: true value
       #got: false

# * what is the exact line number the error is appearing?
  #Line 45 in triangle_spec.rb
# * before you fix the bug, what do you think is causing the error?
  #This is caused by the return statements being strings and not the values true or false.
  #All strings are truthy.

# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
return false if [a,b,c].any? {|side| side == 0}
[a,b,c].max < ([a,b,c].inject(:+) - [a,b,c].max)
end

# 5. Reflection 
#Debugging is tough work! I mean, not in this case, but I almost feel like I'm arriving at a fire 
#I have to put out. What do I have to do first? What's already been done? 
#You'll find my corrected original solution above under "original solution" and my severely
#shortened refactored solution just above this reflection.