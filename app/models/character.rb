# frozen_string_literal: true

class Character < ApplicationRecord
  actable
  belongs_to :player, class_name: 'User', foreign_key: :player_id
  has_many :character_instances
  has_many :campaigns, through: :character_instances

  def name
    specific.name
  end
end
