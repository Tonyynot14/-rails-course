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
class Contact <ActiveRecord::Base
    
end
get '/contacts' do
    @contacts = Contact.all
    erb :index
end

get '/contacts/new' do
    erb:new
end
post '/contacts' do
    contact = Contact.new
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.state = params[:state]
    contact.zip = params[:zip]
    contact.save
    redirect '/contacts'
    end
get '/contacts/edit' do
    @contact = Contact.find(params[:id])
    erb:edit
end
post '/contacts/edit' do
    contact = Contact.find(params[:id])
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.state = params[:state]
    contact.zip = params[:zip]
    contact.save
    redirect '/contacts'
end
    
get '/contacts/search_results' do
    #need to be able to search by first name full name or last name or
    name = "%#{params[:name]}%"
        
    @contacts = Contact.where("last_name LIKE ? or first_name LIKE ?",name,name)
    @name = params[:name]
    erb:search_results
end
