class MyworkController < ApplicationController
  
  def show
    @mywork = User.find(current_user.id)
  end
  
  def myteams
    if current_user.team_id.nil? || current_user.position_id.nil?
      flash[:danger] = "You don't have a team/position assigned, wait until your manager assign you a position."
      redirect_to root_path
    else
      @myteam = Team.find(current_user.team_id)
    end
  end
  
  def alluser
    @allusers = User.all
  end
  
  
  
end