class CreateTeaStores < ActiveRecord::Migration[5.1]
  def change
  	create_table :tea_stores do |t|
  		t.string :name, null:false
  		t.string :location, null:false
  		t.decimal :rating, null:false
  end
end

