# frozen_string_literal: true

class Race < ApplicationRecord
  enum name: ['Dwarf', 'Elf', 'Halfling', 'Human', 'Dragonborn', 'Gnome',
              'Half-Elf', 'Half-Orc', 'Tiefling']
end
