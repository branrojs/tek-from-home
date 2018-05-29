class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  
  protected
  
  def  configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :team_id, :position_id] )
  end
end