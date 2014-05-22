// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge [by myself, with:]

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution
/*
for(var voter in votes){
  if(voteCount.president[votes[voter].president] === undefined)
    voteCount.president[votes[voter].president] = 1;
  else
    voteCount.president[votes[voter].president] += 1;
  if(voteCount.vicePresident[votes[voter].vicePresident] === undefined)
    voteCount.vicePresident[votes[voter].vicePresident] = 1;
  else
    voteCount.vicePresident[votes[voter].vicePresident] += 1;
  if (voteCount.secretary[votes[voter].secretary] === undefined)
    voteCount.secretary[votes[voter].secretary] = 1;
  else
  voteCount.secretary[votes[voter].secretary] += 1;
  if (voteCount.treasurer[votes[voter].treasurer] === undefined)
    voteCount.treasurer[votes[voter].treasurer] = 1;
  else
  voteCount.treasurer[votes[voter].treasurer] += 1;
}

for(var office in voteCount){
  for(var candidate in voteCount[office]){
    if(officers[office] === undefined)
      officers[office] = candidate;
    else{
      if(voteCount[office][candidate] > voteCount[office][officers[office]])
      officers[office] = candidate;
    }
  }
}
*/





// __________________________________________
// Refactored Solution
for(var voter in votes){
  for(var title in votes[voter]){
    if(voteCount[title][votes[voter][title]] === undefined) 
      voteCount[title][votes[voter][title]] = 1;
    else
      voteCount[title][votes[voter][title]] += 1;
  }

}

for(var office in voteCount){
  for(var candidate in voteCount[office]){
    if(officers[office] === undefined)
      officers[office] = candidate;
    else{
      if(voteCount[office][candidate] > voteCount[office][officers[office]])
      officers[office] = candidate;
    }
  }
}



// __________________________________________
// Reflection

//Another tough one - if you wanted to do it properly. I started with using the literals
//to select the properties - as you'll see above - and after alot of copy pasting
//I realized there had to be a better way. This one took some stackoverflow.
//Accessing nested objects seems clumsy at first, but as I got used to it and my code
//got more and more efficient, I realized it's pretty straightforward, and the dynamic
//creation and updating is quite elegant.
//I'm sure there's still something more I can do - like getting rid of those undefined
//conditionals - but I'll have to figure it out another time. Obviously I tried it 
//without those, and without defining the property / value first, it stays undefined
//when trying operations like greater-than, less-than, or +=.




// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)