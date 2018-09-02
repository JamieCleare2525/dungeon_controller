class HandsController < ApplicationController
  def shuffle
    @hand = Hand.find(params[:hand_id])
    @hand.deck.shuffle
    @hand.refresh
    @hand.save!
    @hand.reload
    respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
  end
end
