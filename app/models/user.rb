class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :friendships
  has_many :friends, through: :friendships, source: :friend
  has_one :employee
  def befriend(user)
    self.friends << user
    user.friends << self
  end
end
