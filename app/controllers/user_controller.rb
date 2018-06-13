class UserController < ApplicationController
  before_action :require_admin
  
 def edit
   @user = User.find(params[:id])
 end


 def update
   @user = User.find(params[:id])
   if @user.update(user_params)
     redirect_to alluser_path
   else
     render 'edit'
   end
 end
 
 private
 
  def user_params
      params.require(:user).permit(:name, :email, :team_id, :position_id)
  end
   
  def require_admin
    if (current_user and current_user.admin?) || (current_user and current_user.position.name.eql? "Manager" )
    
    else 
      flash[:danger] = "Only managers users can perform that action"
      redirect_to root_path
    end
  end
   
end