class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = 'Welcome back'
        redirect_to user_path(user)
    else
      flash[:alert] = 'Login failed'
      redirect_to :back
    end
  end

  def destroy
    session.clear
    redirect_to :back
  end


end