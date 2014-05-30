# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"

=begin
def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end
=end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_reps_by_state(*states)
  states.each{|state| 
  	puts "#{state} REPRESENTATIVES"
  	state_reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}'")

  	state_reps.sort_by{|name| 
  		name.to_s.split(' ').last}.each { |rep| puts rep }

  	print_separator
}
  
end



def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_serving = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  ls = {}

  longest_serving.each{|pair| ls[pair[0]] = pair[1] }

  ls.sort_by{|k,v| v}.reverse.each{|k,v| 
  	print "#{k} - #{v} years"
	puts }

	print_separator

end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than #{grade_level})"
  lowest_grade = $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < #{grade_level}")
  lg = {}

  lowest_grade.each{|pair| lg[pair[0]] = pair[1] }

  lg.sort_by{|k,v| v}.each{|k,v| 
  	print "#{k} - Grade Level: #{v.round(2)}"
	puts }
	print_separator
end

def print_senator_vote_counts()
	puts "VOTE COUNTS BY SENATOR"
	vote_count = $db.execute("SELECT name, COUNT(votes.politician_id) FROM congress_members JOIN votes ON (congress_members.id=votes.politician_id) WHERE name LIKE 'Sen%' GROUP BY name")
	vc = {}
	vote_count.each{|pair| vc[pair[0]] = pair[1] }
	vc.sort_by{|k,v| v}.reverse.each{|k,v| 
  	print "#{k} - #{v} votes"
	puts }
end




#print_arizona_reps
print_reps_by_state('AZ', 'NJ', 'NY', 'ME', 'FL', 'AK')

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column


# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
print_senator_vote_counts


# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.

#A gem like sqlite3 is a library. Adding it gives us objects and functions that ruby alone
#would not recognize.
#The variable $db is holding the file open, using ruby's File.open method. In this case, it is
#also using the sqlite3 gem to recognize it as a database for parsing.
#The .execute method on $db makes an SQL statement to the database, and receives a response.
#This particular one is selecting the name from the congress_members table, where the total years in
#congress is greater than the parameter minimum_years.