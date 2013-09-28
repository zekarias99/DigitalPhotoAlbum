class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.datetime :date

      t.timestamps
    end
    
    add_index :albums, :title, :unique => true
  end
end
