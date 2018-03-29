class AddUsersToEvenets < ActiveRecord::Migration[5.1]
  def change
  	add_reference :events, :user, foreign_key: true,
  	add_reference :events, :tattooer, foreign_key: true
  end
end
