class AddDestinationRefToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :destination, index: true
  end
end
