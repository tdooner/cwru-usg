class User < ActiveRecord::Base
  has_many :groups, :foreign_key => :vp_id
end
