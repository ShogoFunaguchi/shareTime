class UsersController < ApplicationController
  def new
    if login_user?
     redirect_to current_user
    else
      @user = User.new
      
    end
  end

  def create

    @user = User.new(user_params)

    if @user.save
      redirect_to current_team
    else
      render 'new'
    end

  end

  private

    def user_params
      params.require(:user).permit(:name,:email,:password,:password_digest,:team_id)
    end

end
