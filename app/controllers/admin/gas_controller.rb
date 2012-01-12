class Admin::GasController < ApplicationController
  before_filter :is_admin 
  before_filter :breadcrumb

  def index
    @gas = Ga.find(:all, :order=>"date DESC")
  end

  def show
    @ga = Ga.find(params[:id])

  end

  def create
    @new_ga = Ga.new(params[:ga])
    if !@new_ga.save
      flash[:error] = @new_ga.errors.full_messages.first
    end
    redirect_to :admin_gas
  end

  def update
    @ga = Ga.find(params[:id])
    if !@ga.update_attributes(params[:ga])
      flash[:error] = @ga.errors.full_messages.first
    end

    redirect_to :admin_gas
  end

  def new
    breadcrumbs.add("New")
    @ga = Ga.new
    @last = Ga.find(:first, :order => "date DESC")

  end

  def edit
    breadcrumbs.add("Edit")
    @ga = Ga.find(params[:id])
  end

  def destroy
    @ga = Ga.find(params[:id])
    @ga.delete

    redirect_to :admin_gas
  end

  def breadcrumb
    breadcrumbs.add("GAs", admin_gas_url)
  end

end
