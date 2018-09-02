# frozen_string_literal: true

class AnimalTotem < ApplicationRecord
  has_many :animal_totem_traits
  has_many :traits, through: :animal_totem_traits
  has_many :visionaries_characters

  validates :name, uniqueness: true
  validates :name, presence: true
end
