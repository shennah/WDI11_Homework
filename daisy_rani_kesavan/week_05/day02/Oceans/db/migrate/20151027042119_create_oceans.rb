class CreateOceans < ActiveRecord::Migration
  def change
    create_table :oceans do |t|
      t.string :name
      t.string :image
      t.string :place
      t.float :area
      t.float :volume
      t.timestamps null: false
    end
  end
end
