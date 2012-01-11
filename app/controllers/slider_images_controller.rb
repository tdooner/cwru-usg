class SliderImagesController < ApplicationController
  def index
    @slider_images = SliderImage.all
  end

  def new
    @slider_image = SliderImage.new
  end
  
  def create
    @slider_image = SliderImage.new(params[:slider_image])
    
    if @slider_image.save
      redirect_to slider_images_url
    else
      render :action => 'new'
    end
  end
  
  def destory
    @slider_image = SliderImage.find(params[:id])
    @slider_image.destory
    
    redirect_to slider_images_url
  end
end
