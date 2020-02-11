
class Character
  attr_reader :info, :name, :actor, :salary

  def initialize(info)
    @info = info
    @name = info[:name]
    @actor = info[:actor]
    @salary = info[:salary]
  end
end
