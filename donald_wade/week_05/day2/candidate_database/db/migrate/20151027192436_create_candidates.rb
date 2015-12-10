class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
      t.string :recommendation1
      t.string :recommendation2
      t.string :recommendation3
      t.string :employer
      t.string :work_history

      t.timestamps null: false
    end
  end
end
