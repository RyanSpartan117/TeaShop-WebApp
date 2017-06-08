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

	# # new
	# get "/courses/new" do
	#   @courses = Course.all
	#   erb(:"courses/new")
	# end

	# # create
	# post "/courses" do
	#   @course = Course.create!(params[:course])
	#   redirect("/courses/#{@course.id}")
	# end

	#show
	get "/teaStores/:id" do
	  @teaStore = TeaStore.find(params[:id])
	  erb(:"tea_stores/show")
	end

	# # edit
	# get "/courses/:id/edit" do
	#   @course = Course.find(params[:id])
	#   erb(:"courses/edit")
	# end

	# # update
	# post "/courses/:id/update" do
	#   @course = Course.find(params[:id])
	#   @course.update(params[:course])
	#   redirect("/courses/#{@course.id}")
	# end

	# # destroy
	# post "/courses/:id/delete" do
	#   @course = Course.find(params[:id])
	#   @course.destroy
	#   redirect("/courses")
	# end

end
