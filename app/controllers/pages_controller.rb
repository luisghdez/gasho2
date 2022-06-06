class PagesController < ApplicationController
  def home
    @sports = Sport.all
    if current_user
      @myroutines = Routine.where(imageable_type: 'User').where(imageable_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
  end
end
