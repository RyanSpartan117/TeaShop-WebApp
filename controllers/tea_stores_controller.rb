class TeaStoresController < Sinatra::Base
	require 'sinatra'
	require 'sinatra/activerecord'

	set :root, File.join(File.dirname(__FILE__), '..')
	set :views, Proc.new { File.join(root, "views")}
	set :public_folder, "public"

	# index
	get "/teaStores" do
		@search = TeaStore.search(params[:q]) if params[:q]
		@teaStores = @search || TeaStore.all

	 	erb(:"tea_stores/index")
	end

	# new
	get "/teaStores/new" do
		@teaStores = TeaStore.all
		erb(:"tea_stores/new")
	end

	# create
	post "/teaStores" do
		@name = params[:name]
		address1 = params[:address1]
		city = params[:city]
		postcode = params[:postcode]
		rating = params[:rating]
	  	@teaStore = TeaStore.create!(name: @name, rating: rating, address1: address1, city: city, postcode: postcode)
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
		id = params[:id].to_i
		@name = params[:name]
		address1 = params[:address1]
		city = params[:city]
		postcode = params[:postcode]
		rating = params[:rating]
		teaStore = TeaStore.find(id)
	  	teaStore.update(name: @name, rating: rating, address1: address1, city: city, postcode: postcode)
		redirect "/teaStores"
		
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
	  redirect("/teaStores")
	end

end
