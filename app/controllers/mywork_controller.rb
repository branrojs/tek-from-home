class MyworkController < ApplicationController
  
  def show
    if current_user.position.nil? || current_user.team.nil?
      flash[:error] = "You have declare your position and your team to do that"
      redirect_to root_path
    end
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