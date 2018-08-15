# frozen_string_literal: true

class TransformersCharacter < ApplicationRecord
  acts_as :character
  validates :name, presence: true
  validates :size, presence: true
  validates :hit_points, presence: true
  validates :speed, presence: true
  validates :allegiance, presence: true
  validates :strength, presence: true
  validates :intelligence, presence: true
  validates :endurance, presence: true
  validates :rank, presence: true
  validates :courage, presence: true
  validates :firepower, presence: true
  validates :skill, presence: true
end
