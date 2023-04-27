class Greeting < Phlex::HTML
  def initialize(msg: "Hello, world!")
    @msg = msg
  end

  def template
    p(style: "color: blue;") { @msg }
  end
end
