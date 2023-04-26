# $LOAD_PATH.unshift File.expand_path("lib", __dir__)

require "bundler/setup"
require "nightmare"

run Nightmare::App
