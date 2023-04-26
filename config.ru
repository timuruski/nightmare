# $LOAD_PATH.unshift File.expand_path("lib", __dir__)

require "bundler"
Bundler.require

require "nightmare"

run Nightmare::App
