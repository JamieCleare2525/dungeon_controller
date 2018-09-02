# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :suit
      t.string :rank
      t.integer :value
      t.string :colour
      t.boolean :drawn, default: false
      t.timestamps
    end
  end
end
