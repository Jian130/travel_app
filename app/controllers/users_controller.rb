class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @user = current_user
  end

  def profile
  end

end
