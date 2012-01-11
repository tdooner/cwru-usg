class Admin::GasController < ApplicationController
  before_filter :is_admin 

  def index
    @gas = Ga.all
  end

  def show

  end

  def create
    @new_ga = Ga.new(params[:ga])
    if !@new_ga.save
      flash[:error] = @new_ga.errors.full_messages.first
    end
    redirect_to :admin_gas
  end

  def update

  end
  def new
    @ga = Ga.new

  end
  def destroy

  end

end
