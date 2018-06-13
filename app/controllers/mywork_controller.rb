class MyworkController < ApplicationController
  
  def show
    @mywork = User.find(current_user.id)
  end
  
  def myteams
    @myteam = Team.find(current_user.team_id)
  end
  
  def alluser
    @allusers = User.all
  end
  
  
  
end