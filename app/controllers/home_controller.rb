# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @characters = current_user.characters
    @dm_campaigns = current_user.campaigns.where(dungeon_master_id: current_user.id)
    @player_campaigns = Campaign.select { |campaign| campaign.characters.map { |character| character.player_id == current_user.id }.flatten.uniq.include?(true) }
    @pending_friendships = current_user.inverse_friendships.where(accepted: false)
    @requested_friendships = current_user.friendships.where(accepted: false)
    @accepted_friends = current_user.accepted_friends
  end
end
