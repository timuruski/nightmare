module Nightmare
  class GreetingController < BaseController
    get "/greet" do
      # phlex Greeting.new(msg: params["greeting"] || "Hello, world!")
      locals = {
        msg: params["greeting"] || "Hello, world!"
      }

      phlex Greeting, locals: locals
    end
  end
end
