class Project
  DEFAULT_VELOCITY = 10
  REQUIRED_ITERATIONS = 3

  def initialize(params = {})
    @name = params.fetch(:name) { '' }
    @started_on = params.fetch(:started_on) { }
    @archive = params.fetch(:archive) { }
  end
  
  attr_reader :name, :started_on

  def velocity
    return DEFAULT_VELOCITY unless enough_iterations?
    sum = archive.last(REQUIRED_ITERATIONS).reduce(0) { |sum,iteration| sum += iteration.points }
    sum / REQUIRED_ITERATIONS rescue DEFAULT_VELOCITY
  end

  protected

  def archive
    @archive ||= []
  end

  def enough_iterations?
    archive.length >= REQUIRED_ITERATIONS
  end
  
end
