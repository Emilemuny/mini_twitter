class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @tweet_limit = Tweet::LIMIT
    @tweet = Tweet.new
    @tweets = Tweet.home_tweets
  end

end
