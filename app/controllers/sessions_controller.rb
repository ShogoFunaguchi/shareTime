class SessionsController < ApplicationController
 def new

 end

 def create

  team=Team.find_by(name: params[:session][:name].downcase)
  if team && team.authenticate(params[:session][:password])
    login_team  team


    params[:session][:remember_me] == '1' ? remember_team(team) : forget_team(team)

    redirect_to team
  else
    flash.now[:alert] = 'パスワードまたはチーム名が間違っています。'
    render 'new'
  end

end

 def destroy
  logout_team
  redirect_to root_path
 end
end
