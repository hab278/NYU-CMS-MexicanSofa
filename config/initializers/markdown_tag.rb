require 'redcarpet'

class ComfortableMexicanSofa::Tag::PageMarkdown
  include ComfortableMexicanSofa::Tag

  def self.regex_tag_signature(identifier = nil)
    identifier ||= IDENTIFIER_REGEX
    /\{\{\s*cms:page:(#{identifier}):markdown\s*\}\}/
  end

  def content
    block.content
  end

  def render
    Redcarpet.new(content).to_html
  end

end
# v1.7.1+
ComfortableMexicanSofa::FormBuilder.class_eval %Q^
  def page_markdown(tag, index)
    default_tag_field(tag, index, :text_area_tag, :data => {:cm_mode => 'text/x-markdown'})
  end
^
