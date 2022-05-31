class SportsController < ApplicationController
  def index
    @sports = Sport.where(user_id: nil)
    @myroutines = Sport.where(user_id: current_user.id)
  end

  def show
    @sport = Sport.find(params[:id])
    @routines = Routine.where(sport_id: @sport.id)
  end

  def new
    @myroutine = Sport.new
  end

  def create
    @myroutine = Sport.new(sports_params)
    @myroutine.user = current_user
    if @myroutine.save
      redirect_to sports_path
    else
      render :new
    end
  end

  private

  def sports_params
    params.require(:sport).permit(:name)
  end
end
