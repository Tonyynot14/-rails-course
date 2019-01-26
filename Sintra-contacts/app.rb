#gems to use (libraries to use)
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

#sets database to use 
set :database, { adapter: 'sqlite3', database: 'test.db' }

# action handler handles get request of / and returns hello world 

#define class , way to access info from database because inherites activerecord methods, this model is used to communicate with db
# called a model
#class Question < ActiveRecord::Base

#end
get '/' do
    'Hello World'
end