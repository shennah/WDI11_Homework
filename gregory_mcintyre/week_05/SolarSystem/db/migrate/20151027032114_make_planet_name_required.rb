class MakePlanetNameRequired < ActiveRecord::Migration
  def change
    change_column :planets, :name, :string, null: false
  end
end
