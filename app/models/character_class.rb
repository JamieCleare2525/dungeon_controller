# frozen_string_literal: true

class CharacterClass < ApplicationRecord
  enum dnds: %w[Barbarian Bard Cleric Druid Fighter Monk
                Paladin Ranger Rogue Sorcerer Warlock Wizard]

  enum transformers: %w[Scout Scientist Warrior Brute Specialist]
end
