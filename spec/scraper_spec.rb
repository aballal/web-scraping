require 'scraper'

describe Scraper do
  let!(:page) do
    getter  = Getter.new
    url = "https://www.dropbox.com/s/ojq6729zk51x4fj/JobOnlineTest.htm?dl=0"
    getter.page(url)
  end

  let!(:scraper) { described_class.new(page) }

  describe 'initialisation' do
    it 'should be instantiated with a parsed page' do
      expect { puts scraper }.to output(/Parse Page: Nokogiri::HTML::Document/).to_stdout
    end
  end
end
