class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image
      t.string :thumbnail

      t.timestamps
    end
  end
end
