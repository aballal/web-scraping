require_relative 'getter'
require_relative 'scraper'
require_relative 'outputter'

getter = Getter.new

keyword = ARGV[0] || 'java'

url = 'https://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?st=' + keyword
page = getter.page(url)
scraper = Scraper.new(page)

job_details = scraper.job_details
outputter = Outputter.new(job_details)

outputter.json
