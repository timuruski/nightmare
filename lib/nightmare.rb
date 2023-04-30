require "zeitwerk"

module Nightmare
  def self.env
    @env ||= ENV["RACK_ENV"] || "development"
  end

  class << self
    attr_accessor :loader
  end

  self.loader = Zeitwerk::Loader.new.tap do |loader|
    loader.push_dir(__dir__)
    loader.enable_reloading if env == "development"

    # TODO: Figure out if this is necessary.
    loader.ignore("#{__dir__}/nightmare/reloader")

    # Use a more Rails-like namespace for MVC.
    loader.collapse(
      "#{__dir__}/nightmare/controllers",
      "#{__dir__}/nightmare/models",
      "#{__dir__}/nightmare/views"
    )
    loader.setup
  end
end
