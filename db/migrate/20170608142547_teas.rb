class Teas < ActiveRecord::Migration[5.1]
  def change
  	create_table :teas do |t|
  		t.string :tea_name, null:false
  		t.string :type_of_tea, null:false
  		t.decimal :price, null:false, precision: 5, scale: 2
  		t.integer :tea_store_id

  	end
  end
end


