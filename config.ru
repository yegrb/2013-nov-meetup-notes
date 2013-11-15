# require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)
require 'sass/plugin/rack'

# use sass for stylesheets
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

require './app'
run Sinatra::Application
