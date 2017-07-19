# Rudeymental - A Swear word generator!

## A fun group project using Rails for the first time.
## From conception to completion in 3 and-a-half days.

![screen shot](https://user-images.githubusercontent.com/24227633/26881006-16ffb670-4b8e-11e7-9222-439c752c43c7.png)

## Team

- Eva Balog
- Nicholas Leacock
- Sophie Mclean
- Albert Yanit


## Technologies

- Ruby(v2.4.0)
- Rails(v4.2.8)
- PostgreSQL
- Capybara
- Rspec


## Overview

- This is the PG version of the app, bearing in mind that I am presently in search of employment. As such I have replaced the original seed list with a list of reasonably curious English words.(Imagine an irate alien drops to Earth, gets his hands on a dictionary, picks two words at random, and shouts them at the nearest passerby.)

- The Level 2 rating serves up words exclusively beginning with 'p', and the Level 3 rating gives you words starting only with 's'. All the rest fall under the Level 1 rating. The app populated with the original seed list is available on request.

- We were totally aware that Rails is overkill for such a simple application as this, but we had used Sinatra already in the course and wanted a taste of Ruby's 'Big Gun'. With more than three days we would have done something more with the app, like perhaps including the additional features below.

## Unrealised Features

- In spite of the three day time-limit we also wanted to develop an API for another team to use in their basic racing game for their crash reactions. Unfortunately we tried but couldn't complete this feature within the time frame, neither the implementation of Hungarian and French swear words as we'd initially planned.

## Database Origin and Compilation

- A large part of our non-PG database is comprised of words that have been omitted from various sites all over the web, some directly from the blacklists of well-known ones. The rest were added by ourselves. We have tried our best to carefully curate and segregate the words according to their harshness, bearing in mind that some users may not wish to experience the full depths of the English language. Hence the rating mechanism.

- Please forgive us if we haven't always managed to strike the perfect balance :)


## Live app

https://get-rude.herokuapp.com/


## Installation/Configuration

- This guide assumes command line developer tools are already installed.

- Everything with a $ needs to be typed into your console, without the $.


### To import the core code

$git clone https://github.com/marudine/rudeymental.git in your preferred parent directory via the console.

### To install gems and dependencies from the Gemfile, (still from within your parent directory):

$cd rudeymental

$gem install bundler

$bundle install


### To create the database

- If you already have PostgreSQL installed, you only need to go straight to 'Final Part 2)' for this section:

- If you don't have PostgreSQL installed, continue on here in the rudeymental directory:

$chmod 755 postgres-install.sh

$./postgres-install.sh

- If this raises an error telling you your computer's name doesn't exist, enter the following two lines, otherwise go straight to 'Final Part 1)':

$create database "your_user_name_here";

- Now go to Final Part 1)...


### Final Part 1)  

$\q

- Now go to Final Part 2)...


### Final Part 2)

$chmod 755 create-db.sh

$./create-db.sh

$\q

- You may receive a huge stack trace but this can be ignored as long as the process ends with your regular command line prompt.


### To populate your new database with the necessary dirty vocabulary

$rake db:seed


## To run the test suite

$rspec
