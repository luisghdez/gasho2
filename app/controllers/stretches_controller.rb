class StretchesController < ApplicationController
  def show
    @stretch = Stretch.find(params[:id])
    @routine = Routine.new
  end

  # private

  # def stretch_params
  #   params.require(:stretch).permit(:routine_id)
  # end

  # def set_stretches
  #   @stretch = Stretch.find(params[:id])
  # end
end
