class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
    @characters = current_user.accepted_friends.map(&:characters).flatten.uniq
  end

  def create
  end

  def edit
  end

  def update
  end
end
