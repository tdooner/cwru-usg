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

  def update
    @page = StaticPage.find(params[:id])
    if !@page.update_attributes(params[:static_page])
      flash[:error] = "Could not update! #{@page.errors.full_messages.first}"
    end

    redirect_to admin_pages_url
  end

  def new
    @page = StaticPage.new
  end

  def edit
    @page = StaticPage.find(params[:id])
  end

  def show
    @page = StaticPage.find(params[:id]) if params[:id]
    @page = StaticPage.find_by_slug(params[:name]) if params[:name]
  end

  def destroy
    @page = StaticPage.find(params[:id])
    if !@page.destroy
      flash[:error] = "Could not destroy page!"
    end

    redirect_to admin_pages_url
  end

end
