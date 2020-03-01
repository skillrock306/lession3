class SessionsController < ApplicationController
	before_action :authentica_user, only: [:new]
  def new
  end

  def create
  	user = User.find_by email: params[:session][:email]	
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to users_path
    else
      flash[:notice]  = "Invalid email/password combination"
      redirect_to login_path 
    end
  end

  def destroy
  	log_out
    flash[:success] = "You are logged out"
    redirect_to login_path
  end
  def authentica_user
    if logged_in?
      flash[:alert] = "You have already sign in"
      redirect_to root_path
    end
  end
end

