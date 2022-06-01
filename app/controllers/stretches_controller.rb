class StretchesController < ApplicationController
  def show
    @stretch = Stretch.find(params[:id])
    session[:current_stretch] = @stretch
    @new = Stretch.new
  end

  def create
    routine = Routine.find(params[:stretch][:routine])
    stretch = Stretch.find(session[:current_stretch]['id'])
    stretch.routine = routine
    stretch.save

    redirect_to routine_path(routine)
  end
end
