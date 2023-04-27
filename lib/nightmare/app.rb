module Nightmare
  class App < Sinatra::Application
    get "/" do
      phlex Greeting.new(msg: "Hello, world!")
      # phlex Greeting.new(msg: "¡Hola, todo el mundo!")
    end
  end
end
