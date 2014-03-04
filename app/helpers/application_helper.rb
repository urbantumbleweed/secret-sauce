module ApplicationHelper
  def track_path_helper(user)
    track_path(user.track, user.position.shortname, user.current_page.shortname)
  end
end
