require 'mechanize'

# Getter class gets the page corresponding to a url
class Getter
  def initialize(agent = Mechanize.new)
    @agent = agent
  end

  def to_s
    "Agent: #{agent.class}"
  end

  private

  attr_reader :agent
end
