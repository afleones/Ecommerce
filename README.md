# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  ruby-2.7.2

* System dependencies
  Postgis Adapter
  
* Configuration
* 
  The first step is to make sure you use Postgres, so specify this when cloning the application:
  
  In your Gemfile add the PostGIS ActiveRecord adapter
    gem 'activerecord-postgis-adapter'
    
  And to use it in your config/database.yml change the adapter from postgresql to postgis
    adapter: postgis
    
  And add the PostGIS extension:
    rails db:gis:setup
    
* Database creation

  use the following command:
   rails db:create or rake db:create

* Database initialization
  Rails db:migrate or rake db:migrate

* How to run the app in localhost
  rails s or rails server
  
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Ecommerce
