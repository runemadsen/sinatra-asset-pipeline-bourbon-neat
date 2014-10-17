require 'rubygems'
require 'bundler'
Bundler.require(:default, :assets, ENV["RACK_ENV"] || 'development')

set :root, File.dirname(__FILE__)

# App
# ----------------------------------------------

module Madsen
  class App < Sinatra::Base

    # Assets
    set :assets_precompile, %w(application.js application.css *.png *.jpg *.svg)
    set :assets_css_compressor, :scss
    set :assets_js_compressor, :uglifier
    register Sinatra::AssetPipeline
    
    get '/' do
      "Hello"
    end

  end
end