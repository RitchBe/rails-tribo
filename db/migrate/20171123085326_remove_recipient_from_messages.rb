class RemoveRecipientFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :recipient, :integer
  end
end
