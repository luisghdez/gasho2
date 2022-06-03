class StretchesController < ApplicationController
  def index
    @stretches = Stretch.all
  end

  def show
    @stretch = Stretch.find(params[:id])
    session[:current_stretch] = @stretch
    @new = Stretch.new
  end

  def create
    routine = Routine.find(params[:stretch][:routines])
    stretch = Stretch.find(session[:current_stretch]['id'])
    combo = StretchesRoutine.new
    combo.routine = routine
    combo.stretch = stretch
    combo.save

    redirect_to routine_path(routine)
  end
end
