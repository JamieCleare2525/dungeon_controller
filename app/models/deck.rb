# frozen_string_literal: true

class Deck < ApplicationRecord
  has_many :cards
  belongs_to :user
  after_create :generate_cards

  SUITS = %w[HEARTS SPADES CLUBS DIAMONDS].freeze
  RANKS = { two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9,
            ten: 10, jack: 11, queen: 12, king: 13, ace: 14 }.freeze

  def generate_cards
    SUITS.each do |suit|
      RANKS.each do |rank, value|
        cards << Card.new(suit: suit, rank: rank.to_s, value: value)
      end
    end
    save!
  end

  def draw_card
    undrawn_cards = cards.where(drawn: false)
    if undrawn_cards.count.zero?
      shuffle
      undrawn_cards = cards.where(drawn: false)
    end
    card_index = rand(1..undrawn_cards.count)
    drawn_card = undrawn_cards[card_index]
    drawn_card.update_attributes(drawn: true)
    drawn_card
  end

  def shuffle
    cards.each do |card|
      card.update_attributes(drawn: false)
    end
  end

  def drawn_cards
    cards.where(drawn: true)
  end

  def remaining_cards
    cards.where(drawn: false)
  end
end
