class AddProductRefToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :product, index: true
  end
end
