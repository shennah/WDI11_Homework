class AddOrbitColumnToPlanets < ActiveRecord::Migration
  def change
    add_column :planets, :orbit, :float
  end
end
