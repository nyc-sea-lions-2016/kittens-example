class UsersController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Thanks for registering'
      redirect_to user_path(@user)
    else
      flash.now[:alert] = 'Sorry something went wrong'
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
