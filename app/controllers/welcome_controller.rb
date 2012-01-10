class WelcomeController < ApplicationController
  def index
    render :index, :layout => "homepage"
  end
end
