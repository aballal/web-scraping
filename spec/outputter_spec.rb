require 'outputter'

describe Outputter do
  subject!(:outputter) { described_class.new(job_details) }

  it { should be_a(Outputter) }
end
