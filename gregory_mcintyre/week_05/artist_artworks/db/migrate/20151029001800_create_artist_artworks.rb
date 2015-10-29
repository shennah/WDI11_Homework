class CreateArtistArtworks < ActiveRecord::Migration
  def change
    create_table :artist_artworks do |t|
      t.references :artist, index: true, foreign_key: true
      t.references :artwork, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
