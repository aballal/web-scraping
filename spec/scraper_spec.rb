require 'scraper'

describe Scraper do
  let!(:scraper) { described_class.new(page) }

  describe 'initialisation' do
    it 'should be instantiated with a page' do
      expect { puts scraper }.to output(/Page: Mechanize::Page/).to_stdout
    end
  end

  describe '#job_details' do
    it 'should get title, recruiter, company for all jobs' do
      expect(scraper.job_details).to eq job_details
    end
  end
end
