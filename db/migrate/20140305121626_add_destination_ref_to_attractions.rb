class AddDestinationRefToAttractions < ActiveRecord::Migration
  def change
    add_reference :attractions, :destination, index: true
  end
end
