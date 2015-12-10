class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist

  has_and_belongs_to_many :genres
end
