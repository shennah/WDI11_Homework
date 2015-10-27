class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :image
      t.integer :num_moons
      t.float :mean_radius
      t.float :mass

      t.timestamps null: false
    end
  end
end
