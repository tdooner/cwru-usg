class Ga < ActiveRecord::Base
  validates_uniqueness_of :date
  validates_presence_of :date

end
