require 'bundler'
require 'pry' 
Bundler.require

class MyApp < Sinatra::Base

  get '/' do  
    erb :index
  end
  
  post '/results' do
    @t1 = params[:text1]
    @t2 = params[:text2]
    @meme_radio_selection = params[:meme_radio_selection]
    
    erb :results
  end

end