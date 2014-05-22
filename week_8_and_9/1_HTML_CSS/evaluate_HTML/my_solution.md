## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

Hacker News does not follow HTML best practices as we've learned them. While it does use the document object model and implement css, it does alot of styling in the html file. For example, in the creation of the navigation bar:

<center>
    <table border=0 cellpadding=0 cellspacing=0 width="85%" bgcolor=#f6f6ef><tr><td bgcolor=#ff6600>
      <table border=0 cellpadding=0 cellspacing=0 width="100%" style="padding:2px">

It uses <center> to center the page, this can be accomplished with margin: 0 auto 0 auto;

It uses old html attributes, like cellpadding, cellspacing, width, bgcolor, border, and most unfortunate of all, the style attribute to write css inline. These deprecated HTML attributes could be accomplished with simple CSS properties such as margin, border-spacing, width, and color. As these are used throughout the page, and not just in the nav bar, this would DRY the code tremendously.
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? 

Did you like the way they used HTML tags?  Please use examples with your arguments.

The HTML is a mess! Though the writers do use IDs and Classes syntacticly correct, they do not utilize them fully. In fact, CSS is only used to set fonts, and for nothing else.

I don't like anything about the site's HTML, but it's not wrong. It is the use of it in place of CSS that is wrong. For example, the constant use of the <center> tag for the meta information.

 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

All text formatting is done in the CSS file. It is the one way in which they utilized CSS and the DOM. For example this CSS:

.comhead { font-family:Verdana; font-size:  8pt; color:#828282; }

Defines the class that is used to style the address of the submitted site. It is 2pts smaller than

.title   { font-family:Verdana; font-size: 10pt; color:#828282; }

which is the displayed title of the submission.
 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

Yes, there were a few things I did not understand until I played with them. For example, immediately following the navbar is this table -
<tr style="height:10px"></tr>
After formatting, I actually thought Sublime was auto closing tags and got confused. Alas, it is actually just to create 10 pixels of padding below the nav. A similar table is used to set 5px of padding below each item.

What I still don't understand - because it doesn't seem to do anything to the appearance of the page - is the following at the end of the HTML for every link -, right after the vote arrow div-

<span id=down_7784288> </span>

It is a span that is closed immediately, and its ID has the same numbers as the up vote div. Is it a remnant of a downvote button that was removed?
 
5) How did the authors organize the CSS file? Was it DRY?

The CSS file is not DRY. The fonts for body, default, title, and several other classes are all the same and repeated. Other than that, it is organized by class.
 
6) Did the authors incorporate any responsive design into the site?

Yes, the site is responsive! This is in the master tables - the outside table set to 85% width, the inside table set to 100% width. It was done in the HTML, but the site still responds well and has good readability on mobile.
 
7) What are your overall thoughts on the HTML/CSS from this website based on what youve read?

It is a huge mess that is barely up to web 2.0 standards, let alone HTML5. The style is all inline with the exception of fonts, everything is repeated dozens of times, and there are items on the page that are not used. On the plus side, it is responsive. It is also a great website for the content and I read it daily. Maybe its time for a redesign...