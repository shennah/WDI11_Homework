class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.references :album, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
