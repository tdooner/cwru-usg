class WelcomeController < ApplicationController
  def index
    @slider_images = SliderImage.all
    render :index, :layout => "homepage"
  end
end
