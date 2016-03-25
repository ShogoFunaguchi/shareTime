module SessionsForUsersHelper
  def login_user(user)
    session[:user_id] = user.id
  end
  
  def current_team
    if session[:team_id]
      @current_team ||= Team.find_by(id: session[:team_id])
    elsif cookies.signed[:team_id]
      @current_team ||= Team.find_by(id: cookies.signed[:team_id])
    end
  end



  def login_user?
    !current_user.nil?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logout_user
    session.delete(:user_id)
    @current_user = nil
  end
end
