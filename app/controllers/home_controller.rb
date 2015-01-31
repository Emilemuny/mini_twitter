class HomeController < ApplicationController

  before_action :authenticate_user!

  def index
    @tweet_limit = Tweet::LIMIT
    @tweet = Tweet.new
    @tweets = Tweet.home_tweets
  end

  # /more_tweets/17
  def more_tweets
    @tweets = Tweet.more_tweets(params[:id])
    render layout: false
  end

end
