class Event < ActiveRecord::Base
  belongs_to :destination
  belongs_to :product
end
