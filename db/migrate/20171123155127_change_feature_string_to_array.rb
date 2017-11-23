class ChangeFeatureStringToArray < ActiveRecord::Migration[5.1]
  def change

  change_column :locations, :features, :string, array: true, default: [], using: "(string_to_array(features, ','))"
  end
end
