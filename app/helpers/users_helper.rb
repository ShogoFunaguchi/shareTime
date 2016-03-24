module UsersHelper
  def current_team

    if session[:team_id]
      @current_team ||= Team.find_by(id: session[:team_id])
    elsif cookies.signed[:team_id]
      @current_team ||= Team.find_by(id: cookies.signed[:team_id])
  end
end
end
