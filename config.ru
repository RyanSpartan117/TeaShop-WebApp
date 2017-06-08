require 'rubygems'
require 'active_record'
require 'sinatra'
# require 'pg'
# require 'rack'


require File.join(File.dirname(__FILE__), 'app.rb')
run Sinatra::Application
