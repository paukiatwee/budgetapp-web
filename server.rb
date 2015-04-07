
require 'sinatra/base'
require 'sinatra/assetpack'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

  assets {
    serve '/js',      from: 'app/js'
    serve '/css',     from: 'app/css'
    serve '/img',     from: 'app/img'

    js :main, ['/js/script.js']
    css :main, ['/css/*.css']
  }

  get '/' do
    erb :index, :locals => { :title => 'Budget App' }
  end
end

if __FILE__ == $0
  App.run!
end
