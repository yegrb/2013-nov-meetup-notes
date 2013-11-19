module ViewHelpers
  def code_block(code)
    %Q{<div class="CodeRay"><div class="code"><pre>#{code}</pre></div></div>}
  end
end