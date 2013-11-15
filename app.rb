require 'sinatra'

set :haml, escape_html: true

# erubis
# set :erb, escape_html: true

set :markdown, layout_engine: :slim

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
  
  # <a href="/mustache" class="<%= selected_if(@section == 'mustache') %>">Mustache</a>
  # %a{href:"#", class:selected_if(@section == 'mustache')}
  def selected_if(expr)
    expr ? "selected" : ""
  end
  
  def section_url(section)
    {
      href: url("/" + section),
      class: selected_if(@section == section)
    }
  end
end

get '/' do
  markdown :home, layout_engine: :slim
end

get '/erb' do
  @section = 'erb'
  erb :'1', layout_engine: :slim
end

get '/haml' do
  @section = 'haml'
  @haml_code = CodeRay.scan(File.read("views/2.haml"), :haml).div(css: :class)
  @sass_code = CodeRay.scan(File.read("public/stylesheets/sass/layout.sass"), :sass).div(css: :class)
  haml :'2', layout_engine: :slim
end

get '/slim' do
  @section = 'slim'
  @slim_code = File.read("views/3.slim")
  @slim_code = %Q{<div class="CodeRay"><div class="code"><pre>#{@slim_code}</pre></div></div>}
  slim :'3'
end

