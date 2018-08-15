# frozen_string_literal: true

class CreateVisionariesCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :visionaries_characters do |t|
      t.string :name
      t.integer :hit_points
      t.integer :speed
      t.string :allegiance
      t.integer :attack
    end
  end
end
