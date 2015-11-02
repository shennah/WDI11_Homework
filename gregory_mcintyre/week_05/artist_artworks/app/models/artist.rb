class Artist < ActiveRecord::Base

  has_many :artist_artworks

  has_many :artworks, through: :artist_artworks

  # Artist.find(1).artist_artworks

end
