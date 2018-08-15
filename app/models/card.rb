# frozen_string_literal: true

class Card < ApplicationRecord
  belongs_to :deck
  validates :rank, presence: true
  validates :suit, presence: true
  validates :value, presence: true
end
