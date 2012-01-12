class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :setup

  def setup
    @user = User.find_by_case_id(session[:cas_user]) if session[:cas_user]
    @user ||= nil

    breadcrumbs.add("Home", root_url)
  end

  def is_admin
    breadcrumbs.add("Admin", admin_url)
    return redirect_to(users_login_url) unless @user
    if !@user.is_admin
      return redirect_to(welcome_index_url)
    end
  end

end
