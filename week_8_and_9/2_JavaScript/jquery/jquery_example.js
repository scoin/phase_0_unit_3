
$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 

$('body').css({'background-color': 'grey'})

 
//RELEASE 1:
  //Add code here to select elements of the DOM 
var mascot = $('#edit')
var text = $('h1')
var image = $('img')
var xpos = 0;
var ypos = 0;
image.css({'position':'relative'})
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
mascot.html("WOODCHUCKS MASCOT")
text.css({'color': 'white', 'border-width': '1px', 'border-style': 'solid'})
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 $('#logo').on('mouseover', function(e){
 	$(this).attr('src', 'http://wildlifebusters.com/wp-content/uploads/2011/03/woodchuck_trapping1.jpg')
 })
 $('#logo').on('mouseleave', function(e){
 	$(this).attr('src', 'http://socialtimes.com/files/2013/02/Dev-Bootcamp-logo.jpg')
 })
$('#logo').on('click', function(e){
	$(this).animate({'left': + xpos + 'px'})
	xpos += 100;
})

 
//RELEASE 4 : Experiment on your own
var movement = 400;
var timer = 150;
 $(document).keyup(function(e) {
	if(e.keyCode === 65){
	xpos -= movement;
	$('#sanic').attr('src', 'http://i.imgur.com/PNmKU7L.gif')
	$('#sanic').animate({'left': + xpos + 'px'}, timer)
	}
	if(e.keyCode === 68){
	xpos += movement;
	$('#sanic').attr('src', 'http://i.imgur.com/7dLHgDo.gif')
	$('#sanic').animate({'left': + xpos + 'px'}, timer)
	}
	if(e.keyCode === 87){
	ypos -= movement;
	$('#sanic').animate({'top': + ypos + 'px'}, timer)
	}
	if(e.keyCode === 83){
	ypos += movement;
	$('#sanic').animate({'top': + ypos + 'px'}, timer)
	}
	
})
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
