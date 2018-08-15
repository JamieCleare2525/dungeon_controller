# frozen_string_literal: true

class AddActableToCharacter < ActiveRecord::Migration[5.2]
  def change
    change_table :characters, &:actable
  end
end
