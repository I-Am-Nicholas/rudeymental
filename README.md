# Rudimental - A Swear word generator

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

- $bundle install (to install gems and dependencies from the Gemfile)

- Database creation
  ????shall we include this: $rails new . -d postgresql -T
- $rake db:create

- -or you might need to run
- $rake db:create RAILS_ENV=test
- $rake db:create RAILS_ENV=development


- To fill your new database with the necessary 'vocabulary'.
- $rake db:seed

## How to run the test suite

- $rspec

## Struggles
- Once we deployed to Heroku, our local seeded database didn't upload, had to run $heroku run db:migrate db:seed
