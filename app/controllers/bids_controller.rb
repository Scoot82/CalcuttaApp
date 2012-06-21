class BidsController < ApplicationController

  def create 
    if params[:bid][:bid_amount].to_i < Team.find_by_id(params[:bid][:team_id]).bids.last.bid_amount 
      flash[:alert] = "You must enter a bid higher than $#{Team.find_by_id(params[:bid][:team_id]).bids.last.bid_amount}"
      redirect_to teams_url
    else  
      @bid = Bid.new(params[:bid])
      @bid.save
      redirect_to teams_url
    end
  end
  
  def new
    @bid = Bid.new
  end
  
  def index
    @bids = Bid.all
  end

end