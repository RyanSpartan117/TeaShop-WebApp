require 'rubygems'
require 'active_record'
require 'sinatra'
require 'pg'
require 'rack'
require 'geocoder'
require 'ransack'

require File.join(File.dirname(__FILE__), 'app.rb')

use Rack::MethodOverride
use TeaStoresController
use TeasController
run Sinatra::Application
