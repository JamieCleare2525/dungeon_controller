class CreateTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :traits do |t|
      t.string :name
      t.text :description
      t.string :effect_type
      t.integer :metric
      t.string :affected_party
      t.timestamps
    end
  end
end
