class TeasController < Sinatra::Base
	require 'sinatra'
	require 'sinatra/activerecord'
	
	set :root, File.join(File.dirname(__FILE__), '..')
	set :views, Proc.new { File.join(root, "views")}



end