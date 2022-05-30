class StretchesController < ApplicationController
  before_action :set_stretches, only: [:show, :create]
  def show
    @myroutines = Sport.where(user_id: current_user)
    @stretch = Stretch.find(params[:id])
    @new = Stretch.new
  end

  def create
    @new = Stretch.new(name: @stretch.name, description: @stretch.description)
    @new.name = @stretch.name
    @new.description = @stretch.description
    raise
  end

  private

  def stretch_params
    params.require(:stretch).permit(:routine_id)
  end

  def set_stretches
    @stretch = Stretch.find(params[:id])
  end
end
