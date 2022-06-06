class RoutinesController < ApplicationController
  def show
    @routine = Routine.find(params[:id])
    @stretches = @routine.stretches
    @photos
  end

  def new
    @newroutine = Routine.new
  end

  def create
    @newroutine = Routine.new(routines_params)
    @newroutine.imageable = current_user
    if @newroutine.save
      redirect_to home_path
    else
      render :new
    end
  end

  def routine_start
    @routine = Routine.find(params[:routine_id])
    @stretches = @routine.stretches
  end

  private

  def routines_params
    params.require(:routine).permit(:name, :description)
  end
end
