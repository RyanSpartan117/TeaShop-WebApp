require_relative '../models/tea.rb'
require_relative '../models/tea_store.rb'

Tea.delete_all
TeaStore.delete_all

teaStore1 = TeaStore.create!(name: 'TTwo', rating: 4.3, address1: 'Unit G17, Kingston Bentall Centre Wood St', city: 'London', postcode: 'KT1 1TP')
teaStore2 = TeaStore.create!(name: 'TeaPigs', rating: 3.9, address1: 'The Richmond Tea Rooms Richmond Street,', city: 'Manchester', postcode: 'M1 3HZ')
teaStore3 = TeaStore.create!(name: 'TeadUp', rating: 4.5, address1: '50 George Street', city: 'Richmond', postcode: 'TW9 1HJ')
teaStore4 = TeaStore.create!(name: 'TooTeaForMe', rating: 2.5, address1: '35 Abbey Rd', city: 'Nottingham', postcode: 'NG2 5NG')


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

