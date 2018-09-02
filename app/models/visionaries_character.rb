# frozen_string_literal: true

class VisionariesCharacter < ApplicationRecord
  acts_as :character
  validates :name, presence: true
  validates :hit_points, presence: true
  validates :speed, presence: true
  validates :allegiance, presence: true
  validates :attack, presence: true

  has_one :animal_totem
end
