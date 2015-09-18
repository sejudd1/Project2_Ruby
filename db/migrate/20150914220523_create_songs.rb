class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :writer
      t.string :genre
      t.string :file
      t.string :like
      t.text :post

      t.timestamps null: false
    end
  end
end
