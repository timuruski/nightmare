require_relative "env"

require "nightmare/reloader"

run Nightmare::Reloader.new { Nightmare::App }
