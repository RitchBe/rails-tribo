class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_name, :string 
  	add_column :users, :last_name, :string 
  	add_column :users, :nick_name, :string 
  	add_column :users, :birth_date, :date
  	add_column :users, :activity, :string
   	add_column :users, :rating, :integer 
  end
end
