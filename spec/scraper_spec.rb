require 'scraper'

describe Scraper do
  let!(:page) do
    getter = Getter.new
    url = 'https://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?st=java'
    getter.page(url)
  end

  let!(:scraper) { described_class.new(page) }

  let!(:expected_job_details) do
    ['Application Development',
     'Operations Analyst',
     'Junior Java Developer & Support Consultant',
     'Junior Front End Developer',
     'Junior Performance Tester',
     'Junior Java Developer',
     'Graduate Software Developer',
     'Junior Front End Developer (Intern)',
     'JUNIOR DEVELOPER | LAMP Stack (Laravel/MySQL/.PHP/Javascript/HTML) | LONDON',
     'Ad Operations Executive - Graduate/Entry Level']
  end

  describe 'initialisation' do
    it 'should be instantiated with a page' do
      expect { puts scraper }.to output(/Page: Mechanize::Page/).to_stdout
    end
  end

  describe '#job_details' do
    it 'should get all titles' do
      expect(scraper.job_details).to eq expected_job_details
    end
  end
end
