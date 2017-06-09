class TeaStores < ActiveRecord::Migration[5.1]
  def change
  	create_table :tea_stores do |t|
      t.string :name, null: false
      t.decimal :rating, null:false
      t.string :address1, null: false
      t.string :city, null: false
      t.string :postcode, null: false
      t.float :latitude
      t.float :longitude
  	end
  end
end