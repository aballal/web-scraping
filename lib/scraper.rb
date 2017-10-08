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
    keys = ['Recruiter:', 'Salary:', 'Location:', 'Job type:']
    keys.each_with_object(title: texts[0]) do |key, hash|
      hash[key.downcase[0..-2].to_sym] = texts[texts.find_index { |text| text == key } + 1]
    end
  end
end
