class CreateHands < ActiveRecord::Migration[5.2]
  def change
    create_table :hands do |t|
      t.integer :campaign_id
      t.integer :user_id
      t.integer :deck_id
      t.timestamps
    end

    add_column :cards, :hand_id, :integer
  end
end
