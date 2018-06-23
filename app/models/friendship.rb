class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, :class_name => 'User'

  def accept!
    self.accepted = true
    self.save!
  end
end
