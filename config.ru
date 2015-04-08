
require 'rubygems'
require 'bundler'
Bundler.require

require './server.rb'

App.set :run, false
run App
