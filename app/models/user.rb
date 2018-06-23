class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :characters, foreign_key: :player_id
  has_many :campaigns, foreign_key: :dungeon_master_id

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  def accepted_friends
    forward_friends = self.friendships.where(accepted: true).map(&:friend)
    backward_friends = self.inverse_friendships.where(accepted: true).map(&:user)
    (forward_friends + backward_friends).uniq
  end
end
