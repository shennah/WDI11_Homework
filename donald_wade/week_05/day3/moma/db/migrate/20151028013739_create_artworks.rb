class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name, null: false
      t.string :image_url, null:false
      t.integer :year
      t.string :medium
      t.string :category
      t.string :movement
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
