class User < ApplicationRecord
  has_many :friendships
  has_many :friends, through: :friendships, source: :friend

  def befriend(user)
    self.friends << user
    user.friends << self
  end
end
