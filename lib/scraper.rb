# Scraper class searches the page for required details
class Scraper
  def initialize(page)
    @page = page
  end

  def job_details
    job_links.map do |link|
      @page = link.click
      indices = search_texts.map { |search_text| texts.find_index { |text| text == search_text } }
      [texts[0]] + indices.collect { |i| texts[i + 1] }
    end
  end

  def to_s
    "Page: #{page.class}"
  end

  private

  attr_reader :page

  # Returns an array of links to each job's page
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

  def search_texts
    ['Recruiter:', 'Salary:']
  end

  # Returns all texts on a job's individual page
  def texts
    page
      .search('#ctl00_ContentPlaceHolder1_DisplayVacancyUC1_pnlRounded')
      .inner_text
      .split("\n")
      .map(&:strip)
      .reject { |text| text == '' }
  end
end
