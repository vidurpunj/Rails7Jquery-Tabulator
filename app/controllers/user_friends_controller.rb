class UserFriendsController < ApplicationController
  def index
    users = User.all
    render json: {users: users}
  end

  def friends
    u = User.find(params[:user_id])
    render json: {friends: u.friends.uniq}
  end
end
