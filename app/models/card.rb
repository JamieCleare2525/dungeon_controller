# frozen_string_literal: true

class Card < ApplicationRecord
  belongs_to :deck
  belongs_to :hand, optional: true

  validates :rank, presence: true
  validates :suit, presence: true
  validates :value, presence: true

  scope :drawn, -> { where(drawn: true) }
  scope :remaining, -> { where(drawn: false) }
end
