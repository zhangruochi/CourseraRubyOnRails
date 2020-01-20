class SessionsController < ApplicationController

  skip_before_action :ensure_login, only: [:new, :create]

  
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:success] = "Logged in successfully"
        redirect_to root_path
    else
        flash[:danger] = 'Invalid username/password combination'
        redirect_to login_path
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "You have been logged out"
  end

end
