class Hand < ApplicationRecord
  has_many :cards, before_add: :check_full_hand?
  belongs_to :campaign
  belongs_to :user
  belongs_to :deck

  def refresh
    cards.each do |card|
      card.update_attributes!(hand_id: nil)
    end
    (1..5).each do |i|
      cards << deck.draw_card
    end
    save!
  end

  private

  def check_full_hand?(card)
    raise Exception.new if cards.count >= 5
  end
end
