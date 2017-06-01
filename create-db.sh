#!/bin/bash

clear

cd ..

echo "The following script will create a rails database..."

echo "The first step is to install Rails..."

rails new rudeymental-db

echo "Rails has been installed."

echo "Replacing Rails default Gemfile with custom Gemfile."

rm rudeymental-db/Gemfile

cp rudeymental/Gemfile rudeymental-db

echo "Replacing default database.yml file with custom database.yml (the database parameters)"

rm rudeymental-db/config/database.yml

cp rudeymental/config/database.yml rudeymental-db/config

echo "Replacing default schema.rb with custom schema.rb (the specific database table configurations.)"

rm rudeymental-db/db/schema.rb

cp rudeymental/db/schema.rb rudeymental-db/db

echo "Changing to the rudeymental directory"

cd rudeymental

echo "Checking that all the newly installed gems have their necessary dependencies."

bundle install

echo "Heading into the database..."

psql

\c rudeymental_test

echo "Clearing test database of tables."

drop table translations, schema_migrations, cusswords;

echo "Clearing development database of tables."

\c rudeymental_development

drop table if exists translations, schema_migrations, cusswords;

echo "Deleting mock/helper directory (rudeymental-db)"

rm -rf ../rudeymental-db

echo "Rebuilding databases."

rake db:drop db:create db:schema:load
