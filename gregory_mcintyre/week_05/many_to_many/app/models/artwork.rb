class Artwork < ActiveRecord::Base

  # Artwork.find(1).artists  # => [ ... ]
  # Artist.find(1).artworks  # => [ ... ]

  has_many :artist_artworks

  has_many :artists, through: :artist_artworks
end


