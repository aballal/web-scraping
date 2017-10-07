require 'scraper'

describe Scraper do
  let!(:page) do
    getter = Getter.new
    url = 'https://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?st=java'
    getter.page(url)
  end

  let!(:scraper) { described_class.new(page) }

  let!(:expected_job_details) do
    [['Application Development', 'Baillie Gifford', 'Competitive'],
     ['Operations Analyst', 'Salmon Ltd', 'Market Rates'],
     ['Junior Java Developer & Support Consultant', 'Salmon Ltd', 'Market Rates'],
     ['Junior Front End Developer', 'Salmon Ltd', 'Market Rates'],
     ['Junior Performance Tester', 'Salmon Ltd', 'Market Rates'],
     ['Junior Java Developer', 'Salmon Ltd', 'Market Rates'],
     ['Graduate Software Developer', 'eBay UK', 'Competitive'],
     ['Junior Front End Developer (Intern)', 'Graduate Internships', '£400 per week'],
     ['JUNIOR DEVELOPER | LAMP Stack (Laravel/MySQL/.PHP/Javascript/HTML) | LONDON', 'The Happiness Index Ltd', 'Negotiable dep. on experience'],
     ['Ad Operations Executive - Graduate/Entry Level', 'Haymarket', 'Dependent on Experience'],
     ['Software Engineering Graduates', 'MI6', '£33,005 - £39,176 (depending on experience)'],
     ['Web Application Developer (Java or Angular 2)', 'Camlin Group', '£30-£45k'],
     ['Junior Java Developer - Talent Pool-170001JQ', 'ITV', 'TBC'],
     ['IT developer (Intern / Full time)', 'Illiquidx Securities Limited', 'negotiable']]
  end

  describe 'initialisation' do
    it 'should be instantiated with a page' do
      expect { puts scraper }.to output(/Page: Mechanize::Page/).to_stdout
    end
  end

  describe '#job_details' do
    it 'should get title, recruiter, company for all jobs' do
      expect(scraper.job_details).to eq expected_job_details
    end
  end
end
