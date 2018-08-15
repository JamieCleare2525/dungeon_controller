# frozen_string_literal: true

class CreateAnimalTotems < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_totems do |t|
      t.string :name
      t.integer :land_speed
      t.integer :air_speed
      t.integer :water_speed
      t.integer :attack
    end
  end
end
