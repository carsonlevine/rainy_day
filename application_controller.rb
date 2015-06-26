require 'bundler'
Bundler.require
require_relative "models/selector.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/tv' do
<<<<<<< HEAD
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
=======
    @service = Service.new(params["category"])
    erb :tv
  end
  
  post '/tvgenre' do
    @genre = Genre.new(params["tvgenre"])
#     @comedy_tv => {
#         @sitcom_tv =>{
#           :netflix => [
#             :himym => ["How I Met Your Mother", "http://cdn1.nflximg.net/webp/7163/9977163.webp", "http://www.netflix.com/title/70143824"],
#             :parks_and_rec => ["Parks and Recreation", "http://cdn1.nflximg.net/webp/7661/11067661.webp", "http://www.netflix.com/title/70143842"],
#             :that_70s_show => ["That 70's Show", "http://cdn1.nflximg.net/webp/8033/8358033.webp", "http://www.netflix.com/title/70155610"],
#             :american_dad => ["American Dad", "http://cdn1.nflximg.net/webp/7735/9687735.webp", "http://www.netflix.com/title/70143809"],
#             :always_sunny => ["It's Always Sunny in Philidelphia", "http://cdn0.nflximg.net/webp/9388/11379388.webp", "http://www.netflix.com/title/70136141"],
#             :the_league => ["The League", "http://cdn0.nflximg.net/webp/2680/10602680.webp", "http://www.netflix.com/title/70157187"],
#             :malcolm_itm => ["Malcolm in the Middle", "http://cdn1.nflximg.net/webp/6697/2896697.webp", "http://www.netflix.com/title/70155569"],
#             :raising_hope => ["Raising Hope", "http://cdn0.nflximg.net/webp/9502/11379502.webp", "http://www.netflix.com/title/70196156"],
#             :the_office => ["The Office (U.S.)", "http://cdn0.nflximg.net/webp/7146/3417146.webp", "http://www.netflix.com/title/70136120"],
#             :new_girl => ["New Girl", "http://cdn1.nflximg.net/webp/9623/11299623.webp", "http://www.netflix.com/title/70196145"],
#             :arrested_development => ["Arrested Development", "http://cdn1.nflximg.net/images/1235/11741235.jpg", "http://www.netflix.com/title/70140358"],
#             :family_guy => ["Family Guy", "http://cdn0.nflximg.net/webp/0422/3520422.webp", "http://www.netflix.com/title/70153382"],
#             :rock30 => ["30 Rock", "http://cdn1.nflximg.net/webp/3379/9913379.webp", "http://www.netflix.com/title/70136124"],
#             :friends => ["F.R.I.E.N.D.S.", "http://cdn0.nflximg.net/webp/3068/9163068.webp", "http://www.netflix.com/title/70153404"],
#             :scrubs => ["Scrubs", "http://cdn1.nflximg.net/webp/4627/3754627.webp", "http://www.netflix.com/title/70153393"],
#             :grace_and_frankie => ["Grace and Frankie", "http://cdn1.nflximg.net/images/6371/21056371.jpg", "http://www.netflix.com/title/80017537"],
#             ],
#           hulu => [
#             :workaholics => ["Workaholics", "http://ib2.huluim.com/show/6341?size=220x124&region=us", "http://www.hulu.com/workaholics"],
#             :family_guy => ["Family Guy", "http://ib3.huluim.com/show/54?size=220x124&region=us", "http://www.hulu.com/family-guy"],
#             :seinfeld => ["Seinfeld", "http://ib1.huluim.com/show/23104?size=220x124&region=us", "http://www.hulu.com/seinfeld"],
#             :modern_family => ["Modern Family", "http://ib2.huluim.com/show/2553?size=220x124&region=us", "http://www.hulu.com/modern-family"],
#             :the_mindy_project => ["The Mindy Project", "http://ib1.huluim.com/show/11248?size=220x124&region=us", "http://www.hulu.com/the-mindy-project"],
#             :blackish => ["black-ish", "http://ib3.huluim.com/show/19738?size=220x124&region=us", "http://www.hulu.com/blackish"],
#             ],
#           hbogo => [],
#           prime => [],
#           other =>[],
#           },
#         talk_show_tv =>{
#           netflix => [],
#           hulu => [],
#           hbogo => [],
#           prime => [],
#           other =>[],
#           },
#         satire_tv =>{
#           netflix => [],
#           hulu => [],
#           hbogo => [],
#           prime => [],
#           other =>[],
#           }
#         }
    erb :tvgenre
  end
 
  post '/tvsubgenre' do
    @tvsubgenre = SubGenre.new(params["tvsubgenre"])
    erb :tvsubgenre
  end
  
  post '/movies' do
    erb :category
  end
  
>>>>>>> d6dce70dc3e7a4c4003b7153783cbe21a234d997
end