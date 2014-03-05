class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.text :description
      t.string :photos, array: true

      t.timestamps
    end
  end
end
