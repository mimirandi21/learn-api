class SportsTeamsController < ApplicationController
  before_action :set_sports_team, only: [:show, :update, :destroy]

  # GET /sports_teams
  def index
    @sports_teams = SportsTeam.all

    render json: @sports_teams
  end

  # GET /sports_teams/1
  def show
    render json: @sports_team
  end

  # POST /sports_teams
  def create
    @sports_team = SportsTeam.new(sports_team_params)

    if @sports_team.save
      render json: @sports_team, status: :created, location: @sports_team
    else
      render json: @sports_team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sports_teams/1
  def update
    if @sports_team.update(sports_team_params)
      render json: @sports_team
    else
      render json: @sports_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sports_teams/1
  def destroy
    @sports_team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sports_team
      @sports_team = SportsTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sports_team_params
      params.require(:sports_team).permit(:teamname, :abbr, :league, :homefield, :logo, :website)
    end
end
