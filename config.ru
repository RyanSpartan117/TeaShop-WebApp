require 'rubygems'
require 'active_record'
require 'sinatra'
require 'pg'
require 'rack'


require File.join(File.dirname(__FILE__), 'app.rb')

use TeaStoresController
use TeasController
run Sinatra::Application
