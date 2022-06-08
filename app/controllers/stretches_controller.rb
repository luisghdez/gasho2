class StretchesController < ApplicationController
  def index
    # raise
    if params[:query].present?
      sql_query = " \
        stretches.name @@ :query \
        OR stretches.difficulty @@ :query \
      "
      @stretches = Stretch.where(sql_query, query: "%#{params[:query]}%")
    else
      @stretches = Stretch.all
    end
  end

  def show
    @stretch = Stretch.find(params[:id])
    @new = StretchesRoutine.new
  end
end
