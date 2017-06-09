class EditTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :tea_stores, :lattitude, :string
  	add_column :tea_stores, :longitude, :string
  end
end
