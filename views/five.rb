class Five
  include ViewHelpers
  
  def menu
    [
      { url: "/erb", text: "ERB" },
      { url: "/haml", text: "Haml" },
      { url: "/slim", text: "Slim" },
      { url: "/mustache", text: "Mustache" },
      { url: "/bonus", text: "Logic-less Slim", selected: "selected" },
    ] 
  end
  
  def view_code
    CodeRay.scan(File.read("views/five.rb"), :ruby).div(css: :class)
  end
  
  def template_code
    code_block(File.read("views/five.slim"))
  end
  
  def previous_url
    "/mustache"
  end
  
  def next_url
    "/wrapup"
  end
  
  def copyright_year
    Date.today.year
  end
end
