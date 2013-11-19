module ViewHelpers
  def h(text)
    Rack::Utils.escape_html(text)
  end
  
  def code_block(code)
    %Q{<div class="CodeRay"><div class="code"><pre>#{code}</pre></div></div>}
  end
end