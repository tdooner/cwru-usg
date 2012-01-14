class StaticPage < ActiveRecord::Base
  validates_presence_of :title
  validates_format_of :slug, :with => /[A-Za-z-_]*/
end
