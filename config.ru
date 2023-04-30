require_relative "env"

run Nightmare::Reloader.new { Nightmare::App }
