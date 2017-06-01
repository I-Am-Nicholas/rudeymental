# Rudeymental - A Swear word generator

## A group project using Rails for the first time.
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

- git clone https://github.com/marudine/rudeymental.git into your preferred directory.

- To install gems and dependencies from the Gemfile
$cd rudeymental
$gem install bundler (unless you have bundler already installed)
$bundle install

- To create database
- $rails new . -d postgresql -T
- $rake db:create
- $rake db:create RAILS_ENV=test
- $rake db:create RAILS_ENV=development

- To fill your new database with the necessary 'vocabulary'.
$rake db:seed


## How to run the test suite

- $rspec
