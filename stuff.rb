require 'bundler'
Bundler.require
require 'sinatra'
require 'opal'
require 'opal-sprockets'
require 'sinatra/asset_pipeline'
require 'sinatra/advanced_routes'
require 'json'

class SchoolWebsite < Sinatra::Base
  Slim::Engine.set_default_options streaming: true
  #set :assets_js_compressor, :uglifier
  register Sinatra::AssetPipeline
  register Sinatra::AdvancedRoutes
  get '/' do
    slim :index
  end
  get '/about' do
    slim :about
  end
  get '/home' do
    redirect :/
  end
end
