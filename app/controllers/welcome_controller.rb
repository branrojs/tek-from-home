class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    if current_user
     @reports = Report.where(team_id: current_user.team_id )
    end
  end
  
  def update_status
    @user = User.find(current_user.id)
    if @user.status
      @report = Report.where(user_id: current_user.id, date: Time.zone.now.to_date)
      @report = Report.find(@report[0]["id"])
      @report.updated_at = Time.zone.now
      @report.save
      @user.status = false
      @user.save
      flash[:notice] = "You have ended your shieft today"
      Notifier.manager_notification_f(current_user.team.manager_email, current_user.name, Time.zone.now).deliver
    else
      @user.status = true
      report = Report.where(user_id: current_user.id, date: Time.zone.now.to_date)
      if report.blank?
       Report.create(user_id: current_user.id, team_id: current_user.team_id, date: Time.zone.now.to_date)
      end
      @user.save
      flash[:notice] = "You have started your shieft today"
      Notifier.manager_notification_s(current_user.team.manager_email, current_user.name, Time.zone.now).deliver
    end
    
    redirect_to root_path
  end
  

end
