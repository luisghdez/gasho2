class StretchesController < ApplicationController
  def show
    @myroutines = Sport.where(user_id: current_user)
    @stretch = Stretch.find(params[:id])
    @new = Stretch.new
  end

  def create
    @sport = Sport.find(params[:stretch][:sport])

  end

  # private

  # def stretch_params
  #   params.require(:stretch).permit(:routine_id)
  # end

  # def set_stretches
  #   @stretch = Stretch.find(params[:id])
  # end
end
