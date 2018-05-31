class HomeController < ApplicationController

  def index
    @characters = current_user.characters
    @friends = current_user.accepted_friends
  end

end
