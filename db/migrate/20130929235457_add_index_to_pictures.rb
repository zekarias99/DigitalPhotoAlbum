class AddIndexToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :album_id, :integer
  	add_index :pictures, :album_id, :unique => false 
  end
end
