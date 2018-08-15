# frozen_string_literal: true

class AddDescriptionToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :description, :text
  end
end
