module CardsHelper
  def icon_for_suit(suit, size, flip = nil)
    case suit
    when "HEARTS"
      inline_svg('svg/suits/hearts.svg', class: "card_suit_#{size}" + " #{flip}")
    when "DIAMONDS"
      inline_svg('svg/suits/diamonds.svg', class: "card_suit_#{size}" + " #{flip}")
    when "CLUBS"
      inline_svg('svg/suits/clubs.svg', class: "card_suit_#{size}" + " #{flip}")
    else
      inline_svg('svg/suits/spades.svg', class: "card_suit_#{size}" + " #{flip}")
    end
  end

  def symbol_for_value(value)
    case value
    when 11
      "J"
    when 12
      "Q"
    when 13
      "K"
    when 14
      "A"
    else
      value.to_s
    end
  end
end
