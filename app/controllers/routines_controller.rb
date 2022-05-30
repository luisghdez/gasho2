class RoutinesController < ApplicationController
  def show
    @routine = Routine.find(params[:sport_id])
    @stretches = Stretch.where(routine_id: @routine.id)
  end
end
