class MakeOceanNameRequired < ActiveRecord::Migration
def change
  	change_column :oceans, :name, :string, null: false
end
end
