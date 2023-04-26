class Greeting < Phlex::HTML
  def initialize(msg: "Hello, world!")
    @msg = msg
  end

  def template
    p { @msg }
  end
end
