class PagesController < ApplicationController
  def home
    @sports = Sport.all
    if current_user
      @myroutines = Routine.where(imageable_type: 'User').where(imageable_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
    @photos = ['https://images.unsplash.com/photo-1624704200567-760cf26ae848?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fHlvZ2F8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1605910959675-2e28d06cc321?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTEyfHx5b2dhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1484452330304-377cdeb05340?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM1fHx5b2dhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1491172700640-4f1a131a3670?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTczfHx5b2dhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1519925610903-381054cc2a1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjAyfHx5b2dhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60']
  end
end
