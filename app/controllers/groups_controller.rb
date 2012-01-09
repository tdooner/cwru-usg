class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
  end

  def list
    @groups = Group.all
  end

end
