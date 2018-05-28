class MyworkController < ApplicationController
  

  
  def show
    @mywork = User.find(params[:id])
  end
  
  
  
end