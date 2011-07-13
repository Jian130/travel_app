class RegistrationsController < Devise::RegistrationsController
  
  #Todo: add sessions controller to handle user name signin
  
  def user_profile
    @user = current_user
  end
  
  def edit_user_profile
    @user = current_user
    @user.profile ||= Profile.new
  end
  
  def create_user_profile
    
  end
  
end