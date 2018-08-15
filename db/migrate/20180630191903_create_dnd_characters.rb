# frozen_string_literal: true

class CreateDndCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :dnd_characters do |t|
      t.string :name
      t.integer :hit_points
      t.string :size
      t.integer :speed
      t.string :race
      t.string :character_class
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :level, default: 1
    end
  end
end
