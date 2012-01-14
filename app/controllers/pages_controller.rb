class PagesController < ApplicationController
  def index
    @pages = StaticPage.all

  end

  def create
    @page = StaticPage.new(params[:static_page])
    if !@page.save
      flash[:error] = @page.errors.full_messages.first
    end

    redirect_to admin_pages_url
  end

  def new
    @page = StaticPage.new
  end

  def list
  end

  def show
    @page= StaticPage.find(params[:name])
  end

end
