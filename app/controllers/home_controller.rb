class HomeController < ApplicationController

  def index
    @characters = current_user.characters
    @pending_friendships = current_user.inverse_friendships.where(accepted: false)
    @requested_friendships = current_user.friendships.where(accepted: false)
    @accepted_friends = current_user.accepted_friends
  end

end
