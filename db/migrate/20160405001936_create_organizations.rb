class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :url
      t.string :phone
      t.text :bio
      t.integer :user_id
      t.timestamps null: false
    end
    add_foreign_key :organizations, :users
  end
end
