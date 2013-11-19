class App
  module Views
    class Four < Mustache
      def menu
        [
          { url: "/erb", text: "ERB" },
          { url: "/haml", text: "Haml" },
          { url: "/slim", text: "Slim" },
          { url: "/mustache", text: "Mustache", selected: "selected" },
        ] 
      end
      
      def view_code
        CodeRay.scan(File.read("views/four.rb"), :ruby).div(css: :class)
      end
      
      def template_code
        CodeRay.scan(File.read("templates/four.mustache"), :html).div(css: :class)
      end
      
      def previous_url
        "/slim"
      end
      
      def next_url
        "/bonus"
      end
    end
  end
end