class TeasController < Sinatra::Base
	require 'sinatra'
	require 'sinatra/activerecord'

	set :root, File.join(File.dirname(__FILE__), '..')
	set :views, Proc.new { File.join(root, "views")}

	# new
	get "/teaStores/:id/tea/new" do
		@id = params[:id]
		@tea = Tea.all

		erb(:"teas/new")
	end

	# create
	post "/teaStores/:id" do
		id = params[:id]
		teaStore = TeaStore.find[id]
		@tea_name = params[:tea_name]
		typeof = params[:type_of_tea]
		price = params[:price]
	  	@tea = Tea.create!(tea_name: @tea_name, type_of_tea: typeof, price: price, tea_store_id: teaStore)

	  	redirect("/teaStores/#{id}")
	end

	#show
	get "/teaStores/tea/:id" do
		id = params[:id].to_i
	  	@tea = Tea.find(id)
	  	erb(:"teas/show")
	end

	#update
	put '/teaStores/tea/:id' do
		id = params[:id].to_i
		tea_name = params[:tea_name]
		typeof = params[:type_of_tea]
		price = params[:price]

		tea = Tea.find(id)
		# "params: #{id}, #{@name}, #{location}, #{teastore}"
		tea.update(tea_name: tea_name, type_of_tea: typeof, price: price)
		redirect "/teaStores/tea/#{id}"
		
	end

	# edit
	get "/teaStores/tea/:id/edit" do
		id = params[:id].to_i
	  	@tea = Tea.find(id)
		erb(:"teas/edit")
	end

	# destroy
	delete "/teaStores/tea/:id" do
		id = params[:id].to_i
		@tea = Tea.find(id)
		teaStore = @tea.tea_store_id
		@tea.destroy
		redirect("/teaStores/#{teaStore}")
	end

end
