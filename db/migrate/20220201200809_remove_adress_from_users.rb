class RemoveAdressFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :adress, :string
  end
end
