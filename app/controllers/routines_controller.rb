class RoutinesController < ApplicationController
  def show
    @routine = Routine.find(params[:id])
    @stretches = Stretch.where(routine_id: @routine.id)
  end

  def new
    @newroutine = Routine.new
  end

  def create
    @newroutine = Routine.new(routines_params)
    @newroutine.imageable = current_user
    if @newroutine.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def routines_params
    params.require(:routine).permit(:name, :description)
  end
end
