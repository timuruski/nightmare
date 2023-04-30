module Nightmare
  class GreetingController < BaseController
    get "/greet" do
      phlex Greeting.new(msg: params["greeting"] || "Hello, world!")
    end
  end
end
