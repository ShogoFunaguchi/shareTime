module SessionsHelper
  def login_team(team)
    session[:team_id] = team.id
  end

  def current_team

    if session[:team_id]
      @current_team ||= Team.find_by(id: session[:team_id])
    elsif cookies.signed[:team_id]
      @current_team ||= Team.find_by(id: cookies.signed[:team_id])
    end

  end

  def login_team?
    !current_team.nil?
  end

  #クッキーにチームを保存する
  def remember_team(team)
    cookies.permanent.signed[:team_id] = team.id
  end

  def forget_team(team)
    cookies.delete(:team_id)
  end

  def logout_team
    forget_team(current_team)
    session.delete(:team_id)
    @current_team = nil
  end
end
