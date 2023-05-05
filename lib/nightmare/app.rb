module Nightmare
  class App < BaseController
    use GreetingController

    get "/" do
      phlex Layout.new(content: Greeting.new)
    end
  end
end
