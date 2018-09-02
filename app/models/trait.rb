class Trait < ApplicationRecord
  has_many :animal_totem_traits
  has_many :animal_totems, through: :animal_totem_traits

  validates :name, uniqueness: true
  # validates :name, presence: true
end
