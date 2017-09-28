class AddAddressToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :address, :text
  end
end
