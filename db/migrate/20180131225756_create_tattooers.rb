class CreateTattooers < ActiveRecord::Migration[5.1]
  def change
    create_table :tattooers do |t|
      t.string :name
      t.string :style
      t.string :email

      t.timestamps
    end
  end
end
