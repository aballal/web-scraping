require 'getter'

describe Getter do
  subject(:getter) { described_class.new }

  describe 'initialisation' do
    it 'should be instantiated with an agent' do
      expect { puts getter }.to output(/Agent: Mechanize/).to_stdout
    end
  end
end
