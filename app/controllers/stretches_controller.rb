class StretchesController < ApplicationController
  def show
    @stretch = Stretch.find(params[:id])
  end
end
