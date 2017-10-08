require 'outputter'

describe Outputter do
  subject!(:outputter) { described_class.new(job_details) }
  let(:output_file) { 'output_test.json' }

  it { should be_a(Outputter) }

  describe '#json' do
    it 'should generate a json file of job details' do
      outputter.json(output_file)
      expect(output_file).to have_file_content JSON.pretty_generate(job_details)
    end
  end
end
