require "sinatra/base"

module Nightmare
  class App < Sinatra::Application
    get "/" do
      "Hello, world!"
    end
  end
end
