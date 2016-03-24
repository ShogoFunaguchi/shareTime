class TeamsController < ApplicationController
  def new
    @teams = Team.new
  end

  def show
    @teams = Team.find(params[:id])
  end

  def create
    @teams = Team.new(team_params)
    if @teams.save
      redirect_to @teams
    else
      render 'new'
    end
  end

  def team_params
    params.require(:team).permit(:name, :email, :password,:password_confirmation)
  end
end
