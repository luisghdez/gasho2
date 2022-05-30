class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
    @routines = Routine.where(sport_id: @sport.id)
  end
end
