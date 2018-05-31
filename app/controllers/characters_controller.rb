class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.player_id = current_user.id
    if @character.save
      redirect_to root_path, notice: "Character Created Successfully"
    else
      render "new"
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to root_path, notice: "Character Update Successfully"
    else
      render "edit"
    end
  end

  private

  def character_params
    params[:character].permit(:name, :race, :character_class, :hit_points,
                              :strength, :dexterity, :constitution,
                              :intelligence, :wisdom, :charisma, :speed)
  end
end
