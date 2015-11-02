class CreateNewArtworks < ActiveRecord::Migration
  def change
    create_table :new_artworks do |t|
      t.string :name
      t.integer :year
      t.string :medium
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
