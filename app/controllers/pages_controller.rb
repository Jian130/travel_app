class PagesController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:home]
  
  def home
  end

  def profile
    @user = current_user
  end
  
  def update_profile
    @user = User.find_by_email(params[:user][:email])
    
    if @user.update_attributes(params[:user])
      redirect_to profile_path
    else
      redirect_to root_path
    end
  end
end
