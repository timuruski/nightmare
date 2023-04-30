module Nightmare
  class Greeting < Phlex::HTML
    def initialize(msg: "Hello, world!")
      @msg = msg
    end

    def template
      p(style: "color: red;") { @msg }
    end
  end
end
