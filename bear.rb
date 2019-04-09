class Bear

  attr_reader :name, :type

  def initialize(name, type, belly = [])
    @name = name
    @type = type
    @belly = belly
  end

end
