# frozen_string_literal: true

class Campaign < ApplicationRecord
  has_many :character_instances
  has_many :characters, through: :character_instances
  belongs_to :dungeon_master, class_name: 'User', foreign_key: :dungeon_master_id

  attr_accessor :available_characters, :assigned_characters
end
