class UsersController < ApplicationController
  before_filter CASClient::Frameworks::Rails::Filter, :only => [:login]

  def login
    u = User.find_or_create_by_case_id(session[:cas_user])
  end

  def logout
    session.delete(:cas_user)
    redirect_to welcome_index_url
  end

  def show
  end

end
