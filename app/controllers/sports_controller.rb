class SportsController < ApplicationController
  def index
    @sports = Sport.where(imageable_type: 'Sport')
    # @myroutines = Sport.where(imageable: current_user.id)
  end

  def show
    @sport = Sport.find(params[:id])
    @routines = Routine.where(imageable_type: 'Sport').where(imageable_id: @sport.id)
  end

  def new
    @myroutine = Sport.new
  end

  def create
    @myroutine = Sport.new(sports_params)
    @myroutine.user = current_user
    if @myroutine.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def sports_params
    params.require(:sport).permit(:name)
  end
end
