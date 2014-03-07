require './stuff.rb'
require 'bundler'
Bundler.require

run Opal::Server.new do |s|
  s.append_path 'assets'
  s.main = 'app'
end

run SchoolWebsite
