class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :description
      t.string :logo
      t.string :email
      t.string :phone
      
      t.timestamps
    end
  end
end
