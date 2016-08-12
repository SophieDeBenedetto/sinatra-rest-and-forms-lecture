require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/tweets' do 
    @tweets = Tweet.all
    erb :'tweets'
  end

  get '/tweets/new' do 
    # bring the user to the page with the form for a new tweet
    erb :'new_tweet'
  end


  # www.ourtwitter.com/tweets/7
  get '/tweets/:id' do 

    @tweet = Tweet.find(params[:id])
    erb :'show_tweet'
  end

  post '/tweets' do 
    tweet = Tweet.create(message: params[:message])
    redirect "/tweets/#{tweet.id}"
  end


  # www.ourtwitter.com/users/7
  # get '/users/:id' do 

  # end
end