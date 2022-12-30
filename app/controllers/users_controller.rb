class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if matches_confirmed_password && @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password
    )
  end

  private def matches_confirmed_password()
    user_params[:password] == params[:user][:password_confirm]
  end
  helper_method :matches_confirmed_password
end
