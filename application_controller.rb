require 'bundler'
Bundler.require
require_relative "models/selector.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/tv' do
    @choicetv = Choice.new(params["category"])
    erb :tv
  end
  
  post '/tvgenre' do
    @tvgenre = GenreTV.new(params["tvgenre"])
    erb :tvgenre
  end
 
  post '/tvsubgenre' do
    @tvsubgenre = SubGenreTV.new(params["tvsubgenre"])
    erb :tvsubgenre
  end
  
  post '/movies' do
    @choicemv = Choice.new(params["category"])
    erb :moviegenre
  end
  
  post '/mvsubgenre' do
    @movie = GenreMV.new(params["genre"])
    puts @movie.mvgenre
    erb :mvsubgenre
  end
  
  post '/mv_results' do
    "Here are your results"
  end
#   post '/mvsubgenre' do
#     @mvsubgenre = SubGenreMV.new
end