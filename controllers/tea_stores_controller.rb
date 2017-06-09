class TeaStoresController < Sinatra::Base
	require 'sinatra'
	require 'sinatra/activerecord'

	set :root, File.join(File.dirname(__FILE__), '..')
	set :views, Proc.new { File.join(root, "views")}

	# index
	get "/teaStores/index" do

		@teaStores = TeaStore.all

	 	erb(:"tea_stores/index")
	end

	# new
	get "/teaStores/new" do
	  @teaStores = TeaStore.all
	  erb(:"tea_stores/new")
	end

	# create
	post "/teaStores/index" do
		@name = params[:name]
		address1 = params[:address1]
		city = params[:city]
		postcode = params[:location]
	  	@teaStore = TeaStore.create!(name: @name, address1: address1, city: city, postcode: postcode)
	  	redirect("/teaStores/#{@teaStore.id}")
	end

	#show
	get "/teaStores/:id" do
		id = params[:id].to_i
	  	@teaStore = TeaStore.find(id)
	  	@teas = @teaStore.teas
	  	erb(:"tea_stores/show")
	end

	#update
	put '/teaStores/:id' do
		id = params[:id]
		@name = params[:name]
		location = params[:location]
		teastore = TeaStore.find(id)
		teastore.update(name: @name, location: location)
		redirect "/teaStores/index"
		
	end

	# edit
	get "/teaStores/:id/edit" do
		id = params[:id].to_i
		@teaStore = TeaStore.find(id)
		erb(:"tea_stores/edit")
	end

	# destroy
	delete "/teaStores/:id" do
	  @teaStore = TeaStore.find(params[:id])
	  @teaStore.destroy
	  redirect("/teaStores/index")
	end

end
