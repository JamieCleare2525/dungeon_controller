# frozen_string_literal: true

class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
    @available_characters = current_user.accepted_friends.map(&:characters).flatten.uniq
    @assigned_characters = []
  end

  def create
    @campaign = Campaign.new(campaign_params.merge(dungeon_master_id: current_user.id))
    character_ids = params[:campaign][:assigned_characters].compact.reject(&:blank?)
    character_ids.each do |character_id|
      @campaign.character_instances.build(character_id: character_id)
    end
    if @campaign.save
      redirect_to root_path
    else
      @available_characters = current_user.accepted_friends.map(&:characters).flatten.uniq
      @assigned_characters = []
      render 'new'
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
    @available_characters = current_user.accepted_friends.map(&:characters).flatten.uniq - @campaign.characters
    @assigned_characters = @campaign.characters
  end

  def update
    @campaign = Campaign.find(params[:id])
    character_ids = params[:campaign][:assigned_characters].compact.reject(&:blank?)
    add_character_ids = character_ids - @campaign.characters.map(&:id)
    remover_character_ids = @campaign.characters.map(&:id) - character_ids
    if @campaign.save
      redirect_to root_path
    else
      @available_characters = current_user.accepted_friends.map(&:characters).flatten.uniq
      @assigned_characters = @campaign.characters
      render 'edit'
    end
  end

  def show
    @campaign = Campaign.find(params[:id])
    @hand = Hand.find_or_create_by!(campaign_id: @campaign.id, user_id: current_user.id, deck_id: current_user.deck.id)
    @hand.deck.shuffle
    @hand.refresh
    @hand.reload
  end

  private

  def campaign_params
    params[:campaign].permit(:title, :description)
  end
end
