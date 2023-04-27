require "zeitwerk"

module Nightmare
  Loader = Zeitwerk::Loader.new.tap do |loader|
    loader.push_dir(__dir__)
    loader.enable_reloading if ENV["RACK_ENV"] == "development"
    loader.collapse("#{__dir__}/views")
    loader.setup
  end
end
