class Admin::HomeController < ApplicationController
  before_filter :is_admin

  def index
    
  end
end
