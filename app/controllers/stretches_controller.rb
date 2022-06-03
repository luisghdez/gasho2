class StretchesController < ApplicationController
  def index
    @stretches = Stretch.all
  end

  def show
    @stretch = Stretch.find(params[:id])
    @new = StretchesRoutine.new
  end
end
