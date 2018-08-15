# frozen_string_literal: true

class CharacterInstance < ApplicationRecord
  belongs_to :character
  belongs_to :campaign
end
