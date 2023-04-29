module Nightmare
  class GreetingController < BaseController
    get "/greeting" do
      phlex Greeting.new(msg: params["greeting"] || "Hello, world!")
    end
  end
end
