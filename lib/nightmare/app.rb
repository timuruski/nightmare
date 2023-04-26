module Nightmare
  class App < Sinatra::Application
    get "/" do
      phlex Greeting.new
    end
  end
end
