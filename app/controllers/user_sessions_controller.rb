class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
    Rails.logger.debug(">>>>>>> #{user_params[:email]} #{user_params[:password]}")
    @user = login(user_params[:email], user_params[:password])
    if @user
      redirect_back_or_to(users_path)
    else
      redirect_to login_path,  :alert => "Wrong Email or password"
    end

  end

  def destroy
    logout
    redirect_to(users_path)
  end

private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
