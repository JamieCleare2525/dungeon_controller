class CharacterInstance < ApplicationRecord
  belongs_to :character
  belongs_to :campaign
end
