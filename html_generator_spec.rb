require 'rspec'
require_relative 'html_generator'
require_relative 'html_generator_methods'

describe HtmlGenerator do
  let(:generator) { generate_sample_html }

  it 'generates valid HTML for the first case' do
    expected_html = <<~HTML
      <html>
          <head>
              <title>
                  Welcome to Metaprogramming
              </title>
          </head>
          <body>
              <div>
                  <h1>
                      Welcome to Metaprogramming
                  </h1>
                  <p1>
                      this is Method Missing
                  </p1>
              </div>
          </body>
      </html>
    HTML

    expect(generator.generator).to eq(expected_html)
  end
end
