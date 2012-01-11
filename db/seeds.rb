# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
standing_committees = ["Information Technology", "Public Relations", "Student Life", "Academic Affairs", "Finance"]

standing_committees.each do |c|
  Group.create({:name=>c, :kind=>"committee", :info=>"_Information coming soon!_", :blurb=>"_Information coming soon!_"})
end

User.create({:name => "Tom Dooner", :case_id => "ted27", :is_admin => true})
User.create({:name => "James Hale", :case_id => "jdh111", :is_admin => true})

# Slider Images
slider_images = ["nemo.jpg", "toystory.jpg", "up.jpg", "walle.jpg"]
slider_images.each do |f|
  s = SliderImage.new
  s.image = File.open(Rails.root.join('db','fixtures',f))
  s.save!
end