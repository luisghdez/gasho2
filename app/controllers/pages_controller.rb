class PagesController < ApplicationController
  def home
    @sports = Sport.all
    @myroutines = Routine.where(imageable_type: 'User').where(imageable_id: current_user.id)
  end
end
