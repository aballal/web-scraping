require_relative 'getter'
require_relative 'scraper'

getter = Getter.new
url = 'https://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?st=java&page=1'
page = getter.page(url)

scraper = Scraper.new(page)
puts scraper.job_details
