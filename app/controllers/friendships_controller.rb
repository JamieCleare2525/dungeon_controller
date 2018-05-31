class FriendshipsController < ApplicationController
  def search
    if params[:search_user].present?
      @users = User.where("(first_name LIKE ?) or (last_name LIKE ?) or (email LIKE ?)", "%#{params[:search_user]}%", "%#{params[:search_user]}%", "%#{params[:search_user]}%")
    else
      flash[:error] = "Error: No input given when searching for a friend."
      redirect_to root_path
    end
  end

  def create
    if Friendship.where(user_id: current_user.id, friend_id: params[:friend_id]).empty?
      @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
      if @friendship.save
        flash[:success] = "Success: Friend Requested!"
      else
        flash[:error] = "Error: Unable to create friendship!"
      end
    else
      flash[:notice] = "Alert: You are already friends!"
    end
    redirect_to root_path
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Alert: Friendship Removed!"
    redirect_to root_path
  end
end
