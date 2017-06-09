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
	get "/teaStores/tea/new" do
	  # @teaStores = TeaStore.all
	  erb(:"teas/new")
	end

	# create
	post "/teaStores/index" do
		@name = params[:name]
		location = params[:location]
	  	@teaStore = TeaStore.create!(name: @name, location: location)
	  	redirect("/teaStores/#{@teaStore.id}")
	end

	#show
	get "/teaStores/:id" do
		id = params[:id].to_i
	  	@teaStore = TeaStore.find(id)
	  	erb(:"tea_stores/show")
	end

	#update
	put '/teaStores/:id' do
		id = params[:id]
		@name = params[:name]
		location = params[:location]
		teastore = TeaStore.find(id)
		"params: #{id}, #{@name}, #{location}, #{teastore}"
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
