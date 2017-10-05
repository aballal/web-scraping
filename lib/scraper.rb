class Scraper
  def initialize(page)
    @parse_page = page.parser
  end

  def to_s
    "Parse Page: #{parse_page.class}"
  end

  private

  attr_reader :parse_page
end
