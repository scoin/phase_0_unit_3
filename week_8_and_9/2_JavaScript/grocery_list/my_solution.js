// U3.W8-9: 


// I worked on this challenge by myself

//As a user, I need to create a new list
//As a user, I would like to add an item to the list of any quantity
//As a user, I would like to read the list
//..., I would like to remove an item from the list

// 2. Pseudocode



// 3. Initial Solution

function groceryList(){
	this.list = {};

	this.add = function(item, qty){
		qty = qty || 1;
		this.list[item] = qty;
	}
	this.remove = function(item, qty){
	qty = qty || this.list[item];

	if ((qty === this.list[item]) || (qty > this.list[item]))
		delete this.list[item];
	else
		this.list[item] = (this.list[item] - qty);
	}

	this.read = function(){
		console.log("Grocery List");
		
		for(var item in this.list)
		console.log(item, this.list[item]);
	}

}



// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

myList = new groceryList();
myList.add("Oranges", 4);
myList.add("Grapes", 2);
myList.add("Tofu");
myList.add("Red Bull", 6)
myList.add("Club Mate", 4)
myList.read();
myList.remove("Oranges");
myList.remove("Grapes", 1);
myList.remove("Club Mate", 9);
myList.read();


// 5. Reflection 