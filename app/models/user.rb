class User < ActiveRecord::Base
  has_many :write_places
end
