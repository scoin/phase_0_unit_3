# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
For each user, Twitter stores - 
id
name
location
website
# of tweets
# following
# followers
tweets
following
followers

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
In composing a tweet, you are allowed text of 140 chars, a photo and a geolocation.
Twitter displays the user name, id, time and date.


## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- because... -->
I think, though I'm not 100% - that it's a one to many relationship, with one user being related to all their tweets, connected by their user id.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
https://github.com/scoin/phase_0_unit_3/blob/master/week_7/imgs/twitter.png

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
SELECT * FROM tweets WHERE user_name = 'greg_piccolo'
SELECT * FROM tweets WHERE user_name = 'greg_piccolo' AND date_time LIKE 'Wednesday, May 14*'
SELECT * FROM tweets WHERE handle = 'Ashton Kutcher'
SELECT handle FROM tweets where id = 69393

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->