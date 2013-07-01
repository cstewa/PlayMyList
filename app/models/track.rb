class Track < ActiveRecord::Base
  attr_accessible :url
  belongs_to :playlist
end
