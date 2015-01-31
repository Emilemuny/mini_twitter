class TweetsController < ApplicationController
  def create
    Tweet.create!(body: params[:tweet][:body], user_id: current_user.id)
    redirect_to root_path
  end

  def destroy
    Tweet.for_user(current_user.id).find(params[:id]).destroy
    redirect_to root_path
  end

end
