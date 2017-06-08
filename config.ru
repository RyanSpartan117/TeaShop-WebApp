require 'rubygems'
require 'active_record'
require 'sinatra'
require 'pg'
require 'rack'


require File.join(File.dirname(__FILE__), 'app.rb')

use tea_stores_controller
use teas_controller
run Sinatra::Application
