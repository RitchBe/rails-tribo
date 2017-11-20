class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.text :description
      t.integer :capacity
      t.integer :rate_by_hour
      t.integer :rate_by_day
      t.integer :rate_by_week
      t.string :features
      t.string :tags
      t.text :rules

      t.timestamps
    end
  end
end
