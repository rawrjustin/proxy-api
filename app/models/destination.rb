class Destination < ActiveRecord::Base
  has_many :events
  has_many :attractions
end
