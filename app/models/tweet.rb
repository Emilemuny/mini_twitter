class Tweet < ActiveRecord::Base
  belongs_to :user

  LIMIT = 140

  validates :body, presence: true, length: { maximum: LIMIT }

  def self.home_tweets
    all.includes(:user).order(created_at: :desc)
  end
end
