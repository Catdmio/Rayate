class AddUsersToEvenets < ActiveRecord::Migration[5.1]
  def change
  	add_column :events, :user_id, :integer
  	add_column :events, :tattooer_id, :integer
 	
 	add_index :users, :user_id
 	add_index :users, :tattooer_id
  end
end
