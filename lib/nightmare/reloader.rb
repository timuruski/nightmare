require "monitor"

module Nightmare
  class Reloader
    MUTEX = Monitor.new

    def initialize(&block)
      @app_block = block
    end

    def call(env)
      MUTEX.synchronize do
        Nightmare::Loader.reload
      end

      app.call(env)
    end

    private def app
      @app_block.call
    end
  end
end
