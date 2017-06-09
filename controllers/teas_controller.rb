class TeasController < Sinatra::Base
	require 'sinatra'
	require 'sinatra/activerecord'

	set :root, File.join(File.dirname(__FILE__), '..')
	set :views, Proc.new { File.join(root, "views")}


	# index
	# get "/teaStores/tea/index" do

	# 	@teaStores = TeaStore.all

	#  	erb(:"teas/index")
	# end

	# new
	get "/teaStore/tea/new" do
	  # @teaStores = TeaStore.all
	  erb(:"teas/new")
	end

	# create
	post "/teaStores/tea/index" do
		@name = params[:name]
		location = params[:location]
	  	@teaStore = TeaStore.create!(name: @name, location: location)
	  	redirect("/teaStores/#{@teaStore.id}")
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
	delete "/teaStores/:id" do
	  @teaStore = TeaStore.find(params[:id])
	  @teaStore.destroy
	  redirect("/teaStores/index")
	end

end
