# frozen_string_literal: true

class CharactersController < ApplicationController
  def genre; end

  def new
    @genre = params[:genre]
    @character = if @genre == 'Transformers'
                   TransformersCharacter.new
                 else
                   DndCharacter.new
                 end
  end

  def create
    if params[:dnd_character].present?
      @genre = 'D&D'
      @character = DndCharacter.new(dnd_character_params)
    else
      @genre = 'Transformers'
      @character = TransformersCharacter.new(transformers_characters_params)
    end
    current_user.characters << @character
    if @character.save
      redirect_to root_path, notice: 'Character Created Successfully'
    else
      render 'new'
    end
  end

  def edit
    @character = Character.find(params[:id]).specific
  end

  def update
    @character = Character.find(params[:id]).specific
    if @character.is_a?(DndCharacter) && @character.update(dnd_character_params)
      redirect_to root_path, notice: 'Character Update Successfully'
    elsif @character.is_a?(TransformersCharacter) && @character.update(transformers_characters_params)
      redirect_to root_path, notice: 'Character Update Successfully'
    else
      render 'edit'
    end
  end

  private

  def dnd_character_params
    params[:dnd_character].permit(:name, :race, :character_class, :hit_points,
                                  :strength, :dexterity, :constitution, :size,
                                  :intelligence, :wisdom, :charisma, :speed)
  end

  def transformers_characters_params
    params[:transformers_character].permit(:name, :size, :hit_points, :speed,
                                           :allegiance, :strength, :intelligence,
                                           :endurance, :rank, :courage, :firepower,
                                           :skill)
  end
end
