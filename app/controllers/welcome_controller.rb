class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    
  end
  
  def update_status
    @user = User.find(current_user.id)
    if @user.status
      @user.status = false
      @user.save
      flash[:notice] = "You have started your chieft today"
      Notifier.manager_notification_s(current_user.team.manager_email, current_user.name, Time.now)
    else
      @user.status = true
      @user.save
      flash[:notice] = "You have ended your chieft today"
      Notifier.manager_notification_f(current_user.team.manager_email, current_user.name, Time.now)
    end
    
    redirect_to root_path
  end
  
end
