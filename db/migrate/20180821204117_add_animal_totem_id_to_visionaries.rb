class AddAnimalTotemIdToVisionaries < ActiveRecord::Migration[5.2]
  def change
    add_column :visionaries_characters, :animal_totem_id, :integer
  end
end
