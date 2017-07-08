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


## Configuration

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

## Live app

https://get-rude.herokuapp.com/


## Unrealised Features

- In spite of the three day time-limit we also wanted to develop an API for another team to use in their basic racing game for their crash reactions. Unfortunately we couldn't spare the time, neither for the implementation of Hungarian and French swear words.

## Database Origin and Compilation

- A large part of our database is comprised of words that have been omitted from various sites all over the web, some directly from the blacklists of well-known ones. The rest were added by ourselves. We have tried our best to carefully curate and segregate the words according to their harshness, bearing in mind that some users may not wish to experience the full depths of the English language.

Please forgive us if we haven't always managed to strike the perfect balance :)
