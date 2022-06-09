class StretchesRoutinesController < ApplicationController
  def create
    if current_user.routines.any?
      routine = Routine.find(params[:stretches_routine][:routine])
      stretch = Stretch.find(params[:stretch_id])
      combo = StretchesRoutine.new
      combo.routine = routine
      combo.stretch = stretch
      combo.save
      redirect_to stretches_path
    else
      redirect_to new_routine_path
    end
  end
end
