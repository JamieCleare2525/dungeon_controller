# frozen_string_literal: true

class CreateTransformersCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :transformers_characters do |t|
      t.string :name
      t.integer :hit_points
      t.string :size
      t.integer :speed
      t.string :allegiance
      t.string :character_class
      t.integer :strength
      t.integer :intelligence
      t.integer :endurance
      t.integer :rank, default: 1
      t.integer :courage
      t.integer :firepower
      t.integer :skill
      t.boolean :prime_cron, default: false
    end
  end
end
