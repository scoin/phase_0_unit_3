# U3.W7: Build an Electronic Grocery List!

#Greg Piccolo
#Linha
 
#As a user, I need to create a new list
#As a user, I would like to add an item to the list of any quantity
#As a user, I would like to read the list
#..., I would like to remove an item from the list

#Pseudocode
#Create a class called grocery_list
#Initialize new grocery_list with the list as a hash
#Create a method add that takes two arguments, item and quantity, with default being 1
#Create a method to remove an item, takes item and quantity as arguments, with default being all
    #Raise argument error if item is not in the list
#Create a method read that prints the list

#Initial solution
=begin
class Grocery_list
    def initialize
        @list = Hash.new(0)
    end
    
    def add(item, qty = 1)
        @list[item] += qty.abs
    end
    
    def read
        @list
    end
    
    def remove(item, qty = @list[item])
        unless @list.keys.include?(item)
            puts "#{item} not in the list"
            return
        end
        @list[item] -= qty.to_i.abs
        @list.delete(item) if @list[item] <= 0
    end
end
=end

#REFACTOR

class Grocery_list
    def initialize
        @list = Hash.new(0)
    end
    
    def add(item, qty = 1)
        @list[item] += qty.abs
    end
    
    def read
        @list.each{|item,qty| puts "#{qty} #{item}" }
    end
    
    def remove(item, qty = @list[item])
        unless @list.keys.include?(item)
            puts "#{item} not in the list"
            return
        end
        @list[item] -= qty.to_i.abs
        @list.delete(item) if @list[item] <= 0
    end
end


#Driver Code -----
our_list = Grocery_list.new
our_list.add("Orange", 12)
our_list.add("Pineapple", 2)
our_list.add("Bananas", 6)
our_list.add("Watermelon")
our_list.add("Lettuce")
our_list.add("Tomatoes",6)
our_list.read
our_list.remove("Orange", 2)
our_list.remove("Eggs")
our_list.remove("Bananas")
our_list.read
 
 
 