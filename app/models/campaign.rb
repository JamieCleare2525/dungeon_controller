class Campaign < ApplicationRecord
  has_many :character_instances
  has_many :characters, through: :character_instances
  belongs_to :dungeon_master, class_name: "User", foreign_key: :dungeon_master_id
end
