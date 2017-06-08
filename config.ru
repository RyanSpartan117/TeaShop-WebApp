require 'sinatra'
require 'pg'
require 'activerecords'


require File.join(File.dirname(__FILE__), 'app.rb')
run Sinatra::Application

use Rack::MethodOverride