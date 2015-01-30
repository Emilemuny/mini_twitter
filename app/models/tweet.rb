class Tweet < ActiveRecord::Base
  belongs_to :user

  def self.home_tweets
    all.includes(:user).order(created_at: :desc)
  end
end
