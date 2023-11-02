def generate_sample_html
  HtmlGenerator.new do
    html do
      head do
        title('Welcome to Metaprogramming')
      end
      body do
        div do
          h1('Welcome to Metaprogramming')
          p1('this is Method Missing')
        end
      end
    end
  end
end
