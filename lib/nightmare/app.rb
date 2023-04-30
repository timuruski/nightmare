module Nightmare
  class App < Sinatra::Base
    use GreetingController
    use RobotController

    get "/" do
      phlex Greeting.new(msg: "Hello, world!")
      # phlex Greeting.new(msg: "¡Hola, todo el mundo!")
    end
  end
end
