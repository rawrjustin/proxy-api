class AddVendorRefToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :vendor, index: true
  end
end
