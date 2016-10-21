# README

A candy store using ruby on rails 5.0.0.1

This is a candy store we made mostly using Ruby on rails. This store is a group project which is still in development.

FUNCTIONALITY:

Browse through products by category or search bar.
Products
Update your cart, checkout
Admin features (adding, updating and deleting)

CODES AND GEMS USED:

HTML
Bootstrap

gem 'devise'
gem 'carrierwave'
gem 'will_paginate', '3.1.5'
gem 'cloudinary'

Test:
gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
gem 'factory_girl_rails', '4.7.0'
gem 'faker', '1.6.6'
gem 'capybara', '~> 2.9', '>= 2.9.1'
gem 'selenium-webdriver', '~> 2.53'
gem 'database_cleaner'


How to set this project up

Terminal commands:

$ git clone git@github.com:Namoneo/candyproject.git
$ cd candyproject
$ bundle install
$ rails db:setup
$ rails db:migrate

To run on the localhost:

$ rails server

it will run on the http://localhost:3000/ depending on your settings!


Things you may want to cover:

Ruby 2.3.1
Rails 5.0.0.1
Used Postgres.sql
Cloudinary can be set up by http://cloudinary.com/
