# frozen_string_literal: true

class DndCharacter < ApplicationRecord
  acts_as :character
  validates :name, presence: true
  validates :size, presence: true
  validates :hit_points, presence: true
  validates :speed, presence: true
end
