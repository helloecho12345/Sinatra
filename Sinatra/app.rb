require 'sinatra'
require "sinatra/reloader" if development?

=begin
class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end 
=end

get '/' do
  "hello!"
end

get '/secret' do
  "This is a secret"
end

get '/random-cat' do
  @name=["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name=params[:name]
  erb(:index)
end

get '/named-cat-form' do
  erb(:form)
end

