class CreateAnimalTotemTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_totem_traits do |t|
      t.integer :animal_totem_id
      t.integer :trait_id
    end
  end
end
