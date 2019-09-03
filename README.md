# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Start
bin/rake start
bin/rake db:migrate
bin/rake db:reset

bin/rails g scaffold CategoryType  category:references name:string
