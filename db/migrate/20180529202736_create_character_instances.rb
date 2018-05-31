class CreateCharacterInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :character_instances do |t|
      t.timestamps
    end
    add_reference :character_instances, :character, index: true
    add_reference :character_instances, :campaign, index: true
  end
end
