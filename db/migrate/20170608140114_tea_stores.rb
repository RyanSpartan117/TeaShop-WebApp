class TeaStores < ActiveRecord::Migration[5.1]
  def change
  	create_table :tea_stores do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.decimal :rating, nul:false
  	end
  end
end