# Scraper class searches the page for required details
class Scraper
  def initialize(page)
    @page = page
    @listing_page = page
  end

  def job_details
    job_links.map do |link|
      @details_page = link.click
      selected_texts
    end
  end

  def to_s
    "Page: #{page.class}"
  end

  private

  attr_reader :page, :listing_page, :details_page

  # Returns an array of links to each job's individual page
  def job_links
    links = []
    loop do
      links << listing_page.links_with(class: 'ovalbuttondetails')
      break unless next_link
      @listing_page = next_link.click
    end
    links.flatten
  end

  def next_link
    listing_page.links_with(text: 'Next >').first
  end

  def all_texts
    details_page
      .search('#ctl00_ContentPlaceHolder1_DisplayVacancyUC1_pnlRounded')
      .inner_text
      .split("\n")
      .map(&:strip)
      .reject { |text| text == '' }
  end

  def selected_texts
    texts = all_texts
    keys = ['Recruiter:', 'Salary:']
    key_indices = keys.map { |key| texts.find_index { |text| text == key } }
    values = key_indices.collect { |i| texts[i + 1] }
    [texts[0]] + values
  end
end
