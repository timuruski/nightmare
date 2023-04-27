# $LOAD_PATH.unshift File.expand_path("lib", __dir__)

ENV["RACK_ENV"] ||= "development"

require "bundler"
Bundler.require

require "nightmare"

run Nightmare::Reloader.new { Nightmare::App.new }
