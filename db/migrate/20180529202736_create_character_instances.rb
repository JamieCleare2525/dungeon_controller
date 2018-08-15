# frozen_string_literal: true

class CreateCharacterInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :character_instances, &:timestamps
    add_reference :character_instances, :character, index: true
    add_reference :character_instances, :campaign, index: true
  end
end
