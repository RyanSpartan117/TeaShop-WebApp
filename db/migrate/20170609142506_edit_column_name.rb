class EditColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :tea_stores, :lattitude, :latitude
  end
end
