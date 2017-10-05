require 'getter'

describe Getter do
  subject(:getter) { described_class.new }
  let!(:url) { "https://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?st=java" }

  describe 'initialisation' do
    it 'should be instantiated with an agent' do
      expect { puts getter }.to output(/Agent: Mechanize/).to_stdout
    end
  end

  describe '#page' do
    it 'should get a page given a url' do
      expect(getter.page(url)).to be_a(Mechanize::Page)
    end
  end
end
