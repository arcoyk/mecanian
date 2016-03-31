module MarkdownHelper
  def markdown_to_html(markdown)
    unless @markdown
      renderer = Redcarpet::Render::HTML.new
      @markdown = Redcarpet::Markdown.new(renderer)
    end
    @markdown.render(markdown).html_safe
  end
end

def markdown_to_text(markdown)
  Nokogiri::HTML(markdown_to_html(markdown)).text
end
