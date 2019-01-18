require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'test.db' }

class Question < ActiveRecord::Base
end


get '/questions' do
    @questions = Question.all
    erb :questions
end

get '/questions/new' do
    erb :new
end

post '/questions' do
   question = Question.new
   question.question = params[:question]
   question.answer = params[:answer]
   question.flag = params[:flag]
   question.save
   redirect '/questions'
end

get '/questions/edit' do
    #load item you are editing and file in erb with values in placeholder
    @question =Question.find(params[:id])
    erb :edit
end

post '/questions/edit' do
   # needs to modify information in database so pull object 
   #find by unique value and each question should be unique. countires and flag may be the same. could use find method if the id was accessible 
   #question =Question.find_by(question: params[:question])
   question = Question.find(params[:id])
   question.question = params[:question]
   question.answer = params[:answer]
   question.flag = params[:flag]
   question.save
   redirect '/questions'
   
end