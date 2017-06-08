# class TeaStores < ActiveRecord::Migration[5.1]
#   def change
#   	create_table :tea_stores do |t|
#       t.string :name, null: false
#       t.string :location, null: false
#       t.decimal :rating, nul:false
#   	end
#   end
# end

# class Teas < ActiveRecord::Migration[5.1]
#   def change
#   	create_table :teas do |t|
#   		t.string :tea_name, null:false
#   		t.string :type, null:false
#   		t.decimal :price, null:false, precision: 5, scale: 2
#   		t.integer :tea_store_id

#   	end
#   end
# end



tea.delete_all
tea_store.delete_all

teaStore1 = tea_store.create! (name: "TTwo", location: "Croydon", rating: 4.3)

tea.create! (name: "PG Tips", type: "English Breakfast", price: 2.99, tea_store_id: teaStore1.id)