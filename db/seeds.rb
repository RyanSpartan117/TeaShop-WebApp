require_relative '../models/tea.rb'
require_relative '../models/tea_store.rb'

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



Tea.delete_all
TeaStore.delete_all

teaStore1 = TeaStore.create!(name: 'TTwo', location: 'Croydon', rating: 4.3)
teaStore2 = TeaStore.create!(name: 'TeaPigs', location: 'Richmond', rating: 3.9)
teaStore3 = TeaStore.create!(name: 'TeadUp', location: 'Oxford Circus', rating: 4.5)
teaStore4 = TeaStore.create!(name: 'TooTeaForMe', location: 'Nottingham', rating: 2.5)


Tea.create!(tea_name: 'PG Tips', type_of_tea: 'English Breakfast', price: 2.99, tea_store_id: teaStore1.id)
Tea.create!(tea_name: 'PG Tips', type_of_tea: 'English Breakfast', price: 3.99, tea_store_id: teaStore2.id)
Tea.create!(tea_name: 'PG Tips', type_of_tea: 'English Breakfast', price: 4.99, tea_store_id: teaStore3.id)
Tea.create!(tea_name: 'PG Tips', type_of_tea: 'English Breakfast', price: 1.99, tea_store_id: teaStore4.id)
Tea.create!(tea_name: 'Russian Earl Grey', type_of_tea: 'Earl Grey', price: 5.99, tea_store_id: teaStore1.id)
Tea.create!(tea_name: 'Red Earl Grey', type_of_tea: 'Earl Grey', price: 3.99, tea_store_id: teaStore2.id)
Tea.create!(tea_name: 'Black Earl Grey', type_of_tea: 'Earl grey', price: 3.99, tea_store_id: teaStore3.id)
Tea.create!(tea_name: 'Earl Rooibos', type_of_tea: 'Earl Grey', price: 4.99, tea_store_id: teaStore4.id)
Tea.create!(tea_name: 'Yorkshire', type_of_tea: 'English Breakfast', price: 1.99, tea_store_id: teaStore1.id)
Tea.create!(tea_name: 'Sencha', type_of_tea: 'Green Tea', price: 3.99, tea_store_id: teaStore2.id)
Tea.create!(tea_name: 'Matcha', type_of_tea: 'Green Tea', price: 4.99, tea_store_id: teaStore3.id)
Tea.create!(tea_name: 'Tencha', type_of_tea: 'Green Tea', price: 2.99, tea_store_id: teaStore4.id)
Tea.create!(tea_name: 'ginger', type_of_tea: 'Herbal', price: 5.50, tea_store_id: teaStore1.id)


puts teaStore1.tea


