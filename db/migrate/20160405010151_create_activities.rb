class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.timestamps null: false
    end
    create_join_table :events, :activities
  end
end
