class RoutinesController < ApplicationController
  def show
    @routine = Routine.find(params[:id])
    @stretches = @routine.stretches
    session[:stretches] = @stretches
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
    @stretches = session[:stretches]
  end

  private

  def routines_params
    params.require(:routine).permit(:name, :description)
  end
end
