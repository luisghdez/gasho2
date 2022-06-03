class StretchesRoutinesController < ApplicationController
  def create
    routine = Routine.find(params[:stretches_routine][:routine])
    stretch = Stretch.find(params[:stretch_id])
    combo = StretchesRoutine.new
    combo.routine = routine
    combo.stretch = stretch
    combo.save

    redirect_to routine_path(routine)
  end
end
