class Character < ApplicationRecord
  belongs_to :player, class_name: 'User', foreign_key: :player_id
  has_many :character_instances
  has_many :campaigns, through: :character_instances

  validates :name, presence: true
  validates :race, presence: true
  validates :character_class, presence: true
  validates :hit_points, presence: true
  validates :speed, presence: true
  validates :strength, presence: true
  validates :dexterity, presence: true
  validates :constitution, presence: true
  validates :intelligence, presence: true
  validates :wisdom, presence: true
  validates :charisma, presence: true
end
