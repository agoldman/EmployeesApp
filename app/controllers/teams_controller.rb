class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      flash[:success] = "New Team Created"
      redirect_to team_url(@team)
    else
      flash[:error] = "Invalid Input"
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(params[:team])
      flash[:success] = "Team Updated!"
      redirect_to team_url(@team)
    else
      flash[:error] = "Invalid Update"
      render :edit
    end
  end

end