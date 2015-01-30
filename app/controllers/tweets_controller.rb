class TweetsController < ApplicationController
  def create
    # tweet here
    Tweet.create!(body: params[:tweet][:body], user_id: current_user.id)
    redirect_to "/"
  end
end
