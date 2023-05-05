module Nightmare
  class Layout < Phlex::HTML
    def initialize(content:)
      @content = content
    end

    def template(&)
      doctype
      head do
        title { "Nightmare" }
      end

      body do
        h1 { "Welcome to the Nightmare" }
        div do
          render(@content)
        end
      end
    end
  end
end
