# frozen_string_literal: true

class Deck < ApplicationRecord
  has_many :cards
  belongs_to :user
  has_one :hand
  after_create :generate_cards

  SUITS = %w[HEARTS SPADES CLUBS DIAMONDS].freeze
  SUITS = { hearts: "red", spades: "black", clubs: "black", diamonds: "red" }
  RANKS = { two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9,
            ten: 10, jack: 11, queen: 12, king: 13, ace: 14 }.freeze

  def generate_cards
    SUITS.each do |suit, colour|
      RANKS.each do |rank, value|
        cards << Card.new(suit: suit.to_s.upcase, rank: rank.to_s.upcase, value: value, colour: colour)
      end
    end
    save!
  end

  def draw_card
    return nil if remaining_cards.count.zero?
    undrawn_cards = remaining_cards
    card_index = rand(1..undrawn_cards.count)
    drawn_card = undrawn_cards[card_index - 1]
    drawn_card.update_attributes(drawn: true)
    drawn_card
  end

  def shuffle
    cards.each do |card|
      card.update_attributes(drawn: false)
    end
  end

  def drawn_cards
    cards.drawn
  end

  def remaining_cards
    cards.remaining
  end
end
