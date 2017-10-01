# The Favs (Rails Backend)

The Favs is an app developed using the Google Maps Api. It allows users to type in a restaurant name and a general location an returns a marker for that restaurant on a map. The User can then click on the marker to see more information about the restaurant and also add dishes to the restaurant. The user can create an account to save their own markers.

This rails backend serves as an api for storing user data sent via JSON request. In `app > controllers > api > v1` you will find three controllers which handle the various requests from the front end. The users controller is responsible for creating new users, updating that user's restaurants, and showing the users. The restaurants controller is responsible for creating new restaurants, showing all the restaurants, and deleting restaurants. The dishes controller is responsible for creating and showing dishes.

## Setup:

* Ruby version: 2.3.4

* System dependencies: PostgreSQL, Rails 5.1.4, Bundler

* Configuration: Make sure to have Bundler installed in run `bundle install` to retrieve all the Gem dependencies.

* Database creation & initialization: Make sure you have Postgres and Rails installed. Run `rails db:create` to create the Postgres Database. Then run `rails db:migrate` to set up the tables in the database. Run `rails db:seed` to load the database with the first two restaurant markers.

* Start Server: Run `rails s`. The default port is 3000, navigate to localhost:3000 to make sure that you see 'Yay! You're on Rails'.

* This project's frontend is located at https://github.com/joshlacey/the_favs_js
