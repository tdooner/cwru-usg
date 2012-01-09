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
