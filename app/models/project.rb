class Project
  def initialize(params = {})
    @name = params.fetch(:name) { '' }
    @started_on = params.fetch(:started_on) { }
  end
  
  attr_reader :name, :started_on

  def velocity
    0
  end
  
end
