require_relative 'html_generator_methods'

class HtmlGenerator
  attr_reader :generator

  def initialize(&block)
    @generator = ''
    @indentation = 0
    instance_eval(&block) if block_given?
  end

  def method_missing(tag, *args, &block)
    content = args.first
    indent = ' ' * @indentation
    @generator << "#{indent}<#{tag}>"
    @generator << "\n"
    @indentation += 4

    @generator << "#{' ' * @indentation}#{content}\n" if content

    instance_eval(&block) if block_given?

    @indentation -= 4
    @generator << "#{indent}</#{tag}>\n"
  end
end

html = generate_sample_html

puts html.generator
