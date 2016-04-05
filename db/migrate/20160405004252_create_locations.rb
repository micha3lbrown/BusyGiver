class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :event_id
      t.timestamps null: false
    end
    add_foreign_key :locations, :events
  end
end
