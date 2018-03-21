class AddPictureUrlToTattooers < ActiveRecord::Migration[5.1]
  def change
    add_column :tattooers, :pictureurl, :string
  end
end
