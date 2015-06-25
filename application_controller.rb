require 'bundler'
Bundler.require
# require_relative "models/dog.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
#   post '/' do
#     @dog = Dog.new(params["name"], params["birthday"],params["age"])
#     erb :dogs
#   end
  
#   get '/dogs' do
#     @fido = Dog.new("Fido", "February 22nd, 2010", 5)
#     erb :dogs
#   end
  
#   get '/victoria' do
#     erb :victoria
#   end
#   get '/hedgehogs' do
#     erb :hedgehogs
#   end
end