class Tweet < ActiveRecord::Base
  belongs_to :user

  LIMIT = 140

  validates :body, presence: true, length: { maximum: LIMIT }

  def self.home_tweets
    all.includes(:user).order(created_at: :desc)
  end

  def self.for_user(user_id)
    where(user_id: user_id)
  end

  def owner?(passed_user_id)
    self.user_id == passed_user_id
  end

end
