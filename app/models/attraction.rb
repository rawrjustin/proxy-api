class Attraction < ActiveRecord::Base
  has_many :products
  belongs_to :destination
end
