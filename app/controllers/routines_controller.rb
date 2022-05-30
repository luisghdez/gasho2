class RoutinesController < ApplicationController
  def show
    @routine = Routine.find(params[:sport_id])
  end
end
