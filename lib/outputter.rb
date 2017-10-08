require 'json'

# Outputter returns json output
class Outputter
  def initialize(job_details)
    @job_details = job_details
  end

  def json(filename = 'output.json')
    File.open(fullpath(filename), 'w') do |file|
      file.puts JSON.pretty_generate(job_details)
    end
  end

  private

  attr_reader :job_details

  def fullpath(filename)
    File.join(File.dirname(__FILE__), '../output', filename)
  end
end
