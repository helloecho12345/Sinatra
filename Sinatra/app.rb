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

#end