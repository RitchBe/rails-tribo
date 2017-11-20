class AddCoordinatesToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :lattitude, :float
    add_column :locations, :longitude, :float
  end
end
