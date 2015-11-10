class AddHelloToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :hello, :string
  end
end
