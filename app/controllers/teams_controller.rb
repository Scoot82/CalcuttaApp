class TeamsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @teams = Team.all
    @bid = Bid.new
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(params[:team])
    @team.save
    redirect_to teams_url
  end
  
  def show
    @team = Team.find_by_id(params[:id])
  end
  
  def edit
    @team = Team.find_by_id(params[:id])
  end
  
  def update
    @team = Team.find_by_id(params[:id])
    @team.update_attributes(params[:team])
    @team.save
    redirect_to teams_url
  end
  
  def destroy
    @team = Team.find_by_id(params[:id])
    @team.destroy
    redirect_to teams_url
  end

end