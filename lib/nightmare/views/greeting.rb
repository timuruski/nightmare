module Nightmare
  class Greeting < Phlex::HTML
    def initialize(locals = {})
      @msg = locals[:msg] || "Hello, world!"
    end

    def template
      div {
        [
          p(style: "color: red;") { @msg },
          p(style: "color: blue;") { url("/") }
        ]
      }
    end
  end
end
