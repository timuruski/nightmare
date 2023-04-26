require "zeitwerk"

loader = Zeitwerk::Loader.new
loader.push_dir(__dir__)
loader.collapse("#{__dir__}/views")
loader.setup

module Nightmare
end
