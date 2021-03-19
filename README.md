# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* <h1>Ruby version</h1>
  <p>ruby-2.7.2</p>

* <h1>System dependencies</h1>
  <p>Postgis Adapter</p>
  
* <h1>Configuration</h1>

  <p>The first step is to make sure you use Postgres, so specify this when cloning the application:
  
  In your Gemfile add the PostGIS ActiveRecord adapter:</p><br/>
    <p>gem 'activerecord-postgis-adapter'</p>
    
  And to use it in your config/database.yml change the adapter from postgresql to postgis: <br/>
    <p>adapter: postgis</p>
    
  And add the PostGIS extension:
    <p>rails db:gis:setup</p>
    
* <h1>Database creation</h1>

  <p>use the following command:</p>
   <p>rails db:create or rake db:create</p>

* <h1>Database initialization</h1>
  <p>Rails db:migrate or rake db:migrate</p>

* How to run the app in localhost
  <p>rails s or rails server</p>
  
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Ecommerce
