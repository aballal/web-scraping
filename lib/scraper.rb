# Scraper class searches the page for required details
class Scraper
  def initialize(page)
    @page = page
  end

  def job_details
    job_links.map do |link|
      details = link.click
      details.search('.v2_title')[0].text.strip
    end
  end

  def to_s
    "Page: #{page.class}"
  end

  private

  attr_reader :page

  def job_links
    links = []
    loop do
      links << page.links_with(class: 'ovalbuttondetails')
      break unless next_link
      @page = next_link.click
    end
    links.flatten
  end

  def next_link
    page.links_with(text: 'Next >').first
  end
end
