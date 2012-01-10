class SliderImage < ActiveRecord::Base
  has_attached_file :image, :styles => { :full => "589x279!", :thumb => "211x100#" }
end
