module Nightmare
  class Reloader
    MUTEX = Thread::Mutex.new

    def initialize(&block)
      @app_block = block
    end

    def call(env)
      MUTEX.synchronize do
        Nightmare.loader.reload

        app.call(env)
      end
    end

    private def app
      @app_block.call
    end
  end
end
