class SessionsForUsersController < ApplicationController
  def new
    if login_user?
     redirect_to current_user
    else
      @user_name = params[:name]
    end
  end

  def create

    user = User.find_by(name: params[:session][:name])

    if user && user.authenticate(params[:session][:password])
      login_user(user)
      redirect_to user
    else
      flash.now[:alert] = 'パスワードが違います'
      render 'new'
    end
  end

end
