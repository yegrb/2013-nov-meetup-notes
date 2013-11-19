class App
  module Views
    class Layout < Mustache
      def title
        "Ruby Template Languages"
      end
      
      def copyright_year
        Date.today.year
      end
    end
  end
end