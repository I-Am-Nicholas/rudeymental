# Rudeymental - A Swear word generator

## A fun group project using Rails for the first time.
## From conception to completion in 3 and-a-half days.

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

- Assuming presence of the command line developer tools.

- $git clone https://github.com/marudine/rudeymental.git in your preferred directory via the command line.

- To install gems and dependencies from the Gemfile
$cd rudeymental
$gem install bundler (unless you have bundler already installed)
$bundle install

## Create Database

- In another temporary directory, run $rails new rudeymental-db
- working in a text editor, copy the gemfile from rudeymental to rudeymental-db
- copy the database.yml file from rudeymental to rudeymental-db
- copy the schema.rb file from rudeymental to rudeymental-db
- still withing the temporary directory, run $bundle install
- run '$rake db:drop db:create db:schema:load'
- drop all tables in both rudeymental_development and rudeymental_test
- run '$rake db:migrate'
- delete the temporary directory
- delete the tables from both databases

- To populate your new database with the necessary 'vocabulary'.
$rake db:seed, in the rudeymental directory


## To run the test suite

- $rspec
