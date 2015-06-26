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
    @genre = Genre.new(params["genre"])
    erb :tvgenre
  end
 
  post '/tvsubgenre' do
     @tv = {
    :comedy_tv => {
        :sitcom_tv =>{
          :netflix => {
            :himym => ["How I Met Your Mother", "http://cdn1.nflximg.net/webp/7163/9977163.webp", "http://www.netflix.com/title/70143824"],
            :parks_and_rec => ["Parks and Recreation", "http://cdn1.nflximg.net/webp/7661/11067661.webp", "http://www.netflix.com/title/70143842"],
            :that_70s_show => ["That 70's Show", "http://cdn1.nflximg.net/webp/8033/8358033.webp", "http://www.netflix.com/title/70155610"],
            :american_dad => ["American Dad", "http://cdn1.nflximg.net/webp/7735/9687735.webp", "http://www.netflix.com/title/70143809"],
            :always_sunny => ["It's Always Sunny in Philidelphia", "http://cdn0.nflximg.net/webp/9388/11379388.webp", "http://www.netflix.com/title/70136141"],
            :the_league => ["The League", "http://cdn0.nflximg.net/webp/2680/10602680.webp", "http://www.netflix.com/title/70157187"],
            :malcolm_itm => ["Malcolm in the Middle", "http://cdn1.nflximg.net/webp/6697/2896697.webp", "http://www.netflix.com/title/70155569"],
            :raising_hope => ["Raising Hope", "http://cdn0.nflximg.net/webp/9502/11379502.webp", "http://www.netflix.com/title/70196156"],
            :the_office => ["The Office (U.S.)", "http://cdn0.nflximg.net/webp/7146/3417146.webp", "http://www.netflix.com/title/70136120"],
            :new_girl => ["New Girl", "http://cdn1.nflximg.net/webp/9623/11299623.webp", "http://www.netflix.com/title/70196145"],
            :arrested_development => ["Arrested Development", "http://cdn1.nflximg.net/images/1235/11741235.jpg", "http://www.netflix.com/title/70140358"],
            :family_guy => ["Family Guy", "http://cdn0.nflximg.net/webp/0422/3520422.webp", "http://www.netflix.com/title/70153382"],
            :rock30 => ["30 Rock", "http://cdn1.nflximg.net/webp/3379/9913379.webp", "http://www.netflix.com/title/70136124"],
            :friends => ["F.R.I.E.N.D.S.", "http://cdn0.nflximg.net/webp/3068/9163068.webp", "http://www.netflix.com/title/70153404"],
            :scrubs => ["Scrubs", "http://cdn1.nflximg.net/webp/4627/3754627.webp", "http://www.netflix.com/title/70153393"],
            :grace_and_frankie => ["Grace and Frankie", "http://cdn1.nflximg.net/images/6371/21056371.jpg", "http://www.netflix.com/title/80017537"]
            },
          :hulu => {
            :workaholics => ["Workaholics", "http://ib2.huluim.com/show/6341?size=220x124&region=us", "http://www.hulu.com/workaholics"],
            :family_guy => ["Family Guy", "http://ib3.huluim.com/show/54?size=220x124&region=us", "http://www.hulu.com/family-guy"],
            :seinfeld => ["Seinfeld", "http://ib1.huluim.com/show/23104?size=220x124&region=us", "http://www.hulu.com/seinfeld"],
            :modern_family => ["Modern Family", "http://ib2.huluim.com/show/2553?size=220x124&region=us", "http://www.hulu.com/modern-family"],
            :the_mindy_project => ["The Mindy Project", "http://ib1.huluim.com/show/11248?size=220x124&region=us", "http://www.hulu.com/the-mindy-project"],
            :blackish => ["black-ish", "http://ib3.huluim.com/show/19738?size=220x124&region=us", "http://www.hulu.com/blackish"],
            },
           :hbogo => [],
           :prime => [],
           :other =>[]
          },
         :talk_show_tv =>{
           :netflix => [],
           :hulu => {
            :daily_show => ["The Daily Show with Jon Stewart", "http://ib3.huluim.com/show/902?size=220x124&region=us", "http://www.hulu.com/the-daily-show-with-jon-stewart"],
             :tonight_show => ["The Tonight Show with Jimmy Fallon", "http://ib1.huluim.com/show/17312?size=220x124&region=us", "http://www.hulu.com/the-tonight-show-starring-jimmy-fallon"],
             :jimmy_kimmel => ["Jimmy Kimmel Live", "http://ib3.huluim.com/show/2526?size=220x124&region=us", "http://www.hulu.com/jimmy-kimmel-live"],
             :ellen_show => ["The Ellen Show", "http://ib3.huluim.com/show/6302?size=220x124&region=us", "http://www.hulu.com/the-ellen-show"]
             },
         :hbogo => {
             :john_oliver => ["Last Week Tonight with John Oliver", "http://go.sky.com/static/SVOD/SKYENTERTAINMENT/IMAGES/Sky%20Atlantic/L/Last%20Week%20Tonight%20With%20John%20Oliver/S2/SE_LastWeekTonightWJO-S2-L.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=last%20week%20tonight/browse&assetID=GOROSTGP42523?assetType=SERIES?browseMode=browseGrid/"]
            },
           :prime => [],
           :other =>[]
          },
        :satire_tv => {
          :netflix => {
             :psych => ["Psych", "http://cdn0.nflximg.net/webp/8136/11948136.webp", "http://www.netflix.com/title/70153394"],
             :bms => ["Blue Mountain State", "http://cdn1.nflximg.net/webp/1587/3431587.webp", "http://www.netflix.com/title/70157491"],
             :white_collar => ["White Collar", "http://cdn0.nflximg.net/webp/1890/3511890.webp", "http://www.netflix.com/title/70166091"],
             :californication => ["Californication", "http://cdn0.nflximg.net/webp/8780/11318780.webp", "http://www.netflix.com/title/70140366"],
             :boondocks => ["The Boondocks", "http://cdn0.nflximg.net/webp/6792/4216792.webp", "http://www.netflix.com/title/70153391"],
             :freaks_and_geeks => ["Freaks and Geeks", "http://cdn0.nflximg.net/webp/4990/3454990.webp", "http://www.netflix.com/title/70253797"],
             :unbreakable_kimmy => ["Unbreakable Kimmy Schmidt", "http://cdn0.nflximg.net/images/8054/12138054.jpg", "http://www.netflix.com/title/80025384"],
             :chuck => ["Chuck", "http://cdn1.nflximg.net/webp/7751/4107751.webp", "http://www.netflix.com/title/70157475"],
             :louie => ["Louie", "http://cdn1.nflximg.net/webp/3063/13013063.webp", "http://www.netflix.com/title/70179977"],
             :glee => ["Freaks and Geeks", "http://cdn0.nflximg.net/webp/8454/3748454.webp", "http://www.netflix.com/title/70143843"]
           },
           :hulu => [],
           :hbogo => {
             :entourage => ["Entourage", "http://ecx.images-amazon.com/images/I/51cq77MONeL._PI_PJStripe-HD-Only-500px,TopLeft,0,0_AA160_.jpg", "http://www.hbogo.com/#series/browse&assetID=GORO1D595?assetType=SERIES?browseMode=browseGrid?browseID=category.INDB464/"],
             :curb_your_enthusiasm => ["Curb Your Enthusiasm", "http://ecx.images-amazon.com/images/I/51F7MKfqqGL._AA160_.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=curb%20your%20enthus/browse&assetID=GORO1D602?assetType=SERIES?browseMode=browseGrid/"],
             :jamie_private_school => ["Ja'mie Private School Girl", "http://ecx.images-amazon.com/images/I/41eYwJLevmL._PI_PJStripe-HD-Only-500px,TopLeft,0,0_AA160_.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=ja'/browse&assetID=GOROSTGP41769?assetType=SERIES?browseMode=browseGrid/"],
             :silicon_valley => ["Silicon Valley", "http://ecx.images-amazon.com/images/I/51pvg%2B-SBBL._PI_PJStripe-HD-Only-500px,TopLeft,0,0_AA160_.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=silicon/browse&assetID=GOROSTGP42372?assetType=SERIES?browseMode=browseGrid/"],
             :veep => ["Veep", "http://ecx.images-amazon.com/images/I/51fevasyOrL._PI_PJStripe-HD-Only-500px,TopLeft,0,0_AA160_.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=veep/browse&assetID=GOROSTGP35040?assetType=SERIES?browseMode=browseGrid/"],
             :sex_and_the_city => ["Sex and the City", "http://ecx.images-amazon.com/images/I/51gQ%2Ble1WPL._AA160_.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=sex/browse&assetID=GORO1D598?assetType=SERIES?browseMode=browseGrid/"]
             },
           :prime => [],
           :other =>[]
      },
       :sketch_tv => {
           :netflix => {
             :portlandia => ["Portlandia", "http://cdn1.nflximg.net/webp/4569/11344569.webp", "http://www.netflix.com/title/70185015"]
             },
           :hulu => {
             :key_and_peele => ["Key and Peele", "http://ib3.huluim.com/show/8898?size=220x124&region=us", "http://www.hulu.com/key-and-peele"],
            :snl => ["Saturday Night Live", "http://ib2.huluim.com/show/77?size=220x124&region=us", "http://www.hulu.com/saturday-night-live"],
             :amy_schumer => ["Inside Amy Schumer", "http://ib4.huluim.com/show/14027?size=220x124&region=us", "http://www.hulu.com/inside-amy-schumer"],
             :kroll_show => ["Kroll Show", "http://ib2.huluim.com/show/12837?size=220x124&region=us", "http://www.hulu.com/kroll-show"],
            :loiter_squad => ["Loiter Squad", "http://ib1.huluim.com/show/22016?size=220x124&region=us", "http://www.hulu.com/loiter-squad"]
             },
           :hbogo => [],
          :prime => [],
           :other =>[]
      },
    },
   :drama_tv => {
      :workplace =>{
        :netflix => {
          :house => ["House, M.D.", "http://cdn1.nflximg.net/webp/5479/4185479.webp", "http://www.netflix.com/title/70136117"], 
          :scandal => ["Scandal", "http://cdn1.nflximg.net/webp/0105/21530105.webp", "http://www.netflix.com/title/70197057"],
          :greys => ["Grey’s Anatomy", "http://cdn0.nflximg.net/webp/0588/21530588.webp", "http://www.netflix.com/title/70140391"],
          :west_wing => ["West Wing", "http://cdn0.nflximg.net/webp/1150/8501150.webp", "http://www.netflix.com/title/70157152"],
          :mad_men => ["Mad Men", "http://cdn1.nflximg.net/webp/9631/21019631.webp", "http://www.netflix.com/title/70136135"],
          :house_of_cards => ["House of Cards", "http://cdn1.nflximg.net/images/8773/21068773.jpg", "http://www.netflix.com/title/70178217"]
          },
        :hulu => {
          :empire => ["Empire", "http://ib4.huluim.com/show/21027?size=220x124&region=us", "http://www.hulu.com/empire"]
          },
        :hbogo => {
          :newsroom => ["The Newsroom", "http://ecx.images-amazon.com/images/I/41btVtjR67L._PI_PJStripe-HD-Only-500px,TopLeft,0,0_AA160_.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=newsroom/browse&assetID=GOROSTGP35914?assetType=SERIES?browseMode=browseGrid/"], 
          :true_detective => ["True Detective", "http://ecx.images-amazon.com/images/I/51aFRg8vXfL._PI_PJStripe-HD-Only-500px,TopLeft,0,0_AA160_.jpg", "http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=true%20detective/browse&assetID=GOROSTGP41968?assetType=SERIES?browseMode=browseGrid/"]
          },
        :prime => {
          
          :good_wife => ["The Good Wife", "http://ecx.images-amazon.com/images/I/41gT-rWN6NL._PI_PJStripeHD-Prime-500px02,TopLeft,0,0_AA160_.jpg", "http://www.amazon.com/Home/dp/B0064MGU98/ref=sr_1_2?ie=UTF8&qid=1435330613&sr=8-2&keywords=good+wife"], 
          :suits => ["Suits", "http://ecx.images-amazon.com/images/I/51ueG5wsaTL._PI_PJStripeHD-Prime-500px02,TopLeft,0,0_AA160_.jpg", "http://www.amazon.com/Inside-Track/dp/B005544V6A/ref=sr_1_1?s=movies-tv&ie=UTF8&qid=1435330646&sr=1-1&keywords=suits&pebp=1435330672788&perid=0BSPEW5GNRJ6786RAZG3"]
    
          },
          :other =>{}
        },
      :crimes => {
        :netflix => {
          :bones => ["Bones", "http://cdn0.nflximg.net/webp/9298/11379298.webp","http://www.netflix.com/title/70136123"], 
          :l_o_svu => ["Law and Order SVU", "http://cdn1.nflximg.net/webp/3687/12043687.webp", "http://www.netflix.com/title/70140403"], 
          :blacklist => ["Blacklist", "http://cdn0.nflximg.net/webp/2182/10922182.webp", "http://www.netflix.com/title/70281312"], 
          :sherlock => ["Sherlock", "http://cdn0.nflximg.net/webp/7250/9747250.webp", "http://www.netflix.com/title/70202589"], 
          :luther => ["Luther","http://cdn1.nflximg.net/webp/0899/3960899.webp", "http://www.netflix.com/title/70175633"], 
          :dexter=> ["Dexter", "http://cdn0.nflximg.net/webp/1274/3861274.webp", "http://www.netflix.com/title/70136126"]
          },
        :hulu => {
          :csi => ["CSI","http://ib2.huluim.com/show/7889?size=220x124&region=us","http://www.hulu.com/csi-crime-scene-investigation"]
          },
        :hbogo => {
          :boardwalk =>  ["Boardwalk Empire","http://ecx.images-amazon.com/images/I/51gqo4clTcL._PI_PJStripe-HD-Only-500px,TopLeft,0,0_AA160_.jpg","http://www.hbogo.com/#search&browseMode=browseGrid?searchTerm=boardwalk/browse&assetID=GOROSTGP29677?assetType=SERIES?browseMode=browseGrid/"]
          },
        :prime => {},
          :other =>{}
        },
      :teen =>{
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
      :family => {
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        }
      },

    :sci_fi_tv => {
      :futuristic =>{
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
      :medieval => {
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
      :dystopian =>{
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        }
      },
 
       
     :reality_tv => {
       :food =>{
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
      :talent => {
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
      :survival =>{
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
      :dramatic => {
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
       :workplace_reality =>{
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        }
      },
     :kids_tv => {
       :age_0 =>{
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
       :age_7 => {
        :netflix => {},
        :hulu => {},
        :hbogo => {},
        :prime => {},
          :other =>{}
        },
       }
}
    @subgenre = SubGenreTV.new(params["subgenre"])
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