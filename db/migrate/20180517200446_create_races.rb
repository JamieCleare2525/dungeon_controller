# frozen_string_literal: true

class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.integer :name
    end
  end
end
