# frozen_string_literal: true

class CampaignGenre < ApplicationRecord
  enum type: ['D&D', 'Transformers']
end
