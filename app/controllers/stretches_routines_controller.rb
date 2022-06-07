class StretchesRoutinesController < ApplicationController
  def create
    if current_user.routines.nil?
      routine = Routine.find(params[:stretches_routine][:routine])
      stretch = Stretch.find(params[:stretch_id])
      combo = StretchesRoutine.new
      combo.routine = routine
      combo.stretch = stretch
      combo.save
      redirect_to routine_path(routine)
    else
      redirect_to new_routine_path
    end
  end
end
