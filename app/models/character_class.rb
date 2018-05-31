class CharacterClass < ApplicationRecord
  enum name: ["Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk",
              "Paladin", "Ranger", "Rogue", "Sorcerer", "Warlock", "Wizard"]
end
