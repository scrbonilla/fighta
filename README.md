#Fighta
GA WDI DC October 2014 - Project 1-version 1.0

##Overview

FightApp is meant to reduce the amount of time wasted looking for good fight clip, by having only "a hand picked selection" of the best fight scenes, chosen by users that know what a Glorious Battle looks like!

FightApp is focused on having 'Only the Best' Martial arts and Anime, fight scenes.

This App will weed out all the so-so fight clips leaving only the best of the best for your viewing pleasure.

##Dependencies/Technology Used

+ twitterBoostrap
+ Ruby 2.1.2
+ Ruby on Rails 4.1.6
+ PostgreSQL Database
+ Authentication & Authorization (bcrypt-ruby)
+ YouTube API with HTTParty
+ Testing using rspec-rails, capybara

##User Stories

+ Users may choose to simply browse and not sign up. restrictions: unnable to comment, vote on videos, or upload videos.

+ Users that sign up may comment and vote on videos. Even upload there own videos.
All video clips, start out in a 'Amateur Pool of movie clips'. Users vote on which fight clip is "Legendary".

+ When a fight clip gets 10 likes from Users, then that video moves on to 'Legendary Fight' status--front and center via Landing Page. Else, if video gets 10 dislikes, video is deleted and replaced with a new clip automatically.

+ only 5 of the most recently "promoted" videos may sit on the Homepage at a time. A library will house all prior "Legendary Clips", for Users viewing pleasure.

Phase I - Implement "User can vote", video's in "Amateur Pool" must be embedded, using youtube API. Videos must also Delete/remove automatically |or| move to Landing Page --based on vote count.

Phase II - Implement "User can upload", video's into "Amateur Pool" for a chance to be voted Legendary. User must be able to paste entire URL, and algorithm needs to extract UNI.




 relevant link:

 [View Website](http://www.fighta-rails.com)

[ERD for FightApp](https://www.lucidchart.com/invitations/accept/75f6d466-50c3-474d-9c3f-f86340d8f0f0)

visuals:

[LandingPage](http://i.imgur.com/WHxL7br.jpg)

[1stERD](http://i.imgur.com/casTQG2.jpg)

[Page2](http://i.imgur.com/gCZVaNn.jpg)

[Champion](http://i.imgur.com/mdpj27n.jpg)















