class SliderImage < ActiveRecord::Base
  has_attached_file :image, {
    :styles => { :full => "589x279!", :thumb => "211x100#" },
    :url => ":rails_root/public/system/:attachment/:id/:style/:hash.:extension",
    :hash_secret => "WhatACoolS3cr3tStr1ngAb0u7U5G"
  }
end
