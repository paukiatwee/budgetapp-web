
require 'sinatra'

get '/' do
  erb :index, :locals => { :title => 'Budget App' }
end
