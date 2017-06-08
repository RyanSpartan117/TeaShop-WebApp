require 'sinatra/reloader' if development?

# Load models
Dir[File.dirname(__FILE__) + '/models/*.erb'].each { |file| require file }

# Load controllers
Dir[File.dirname(__FILE__) + '/controllers/*.erb'].each { |file| require file }

# General route actions
get '/' do
  erb :home
end
