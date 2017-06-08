class TeasController < Sinatra::Base


	set :root, File.join(file.dirname(__FILE__), '..')
	set :views, Proc.new { File.join(root, "views")}

	

end