class River

  attr_reader :name, :fish
  attr_writer :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def spawnfish
    if fish.count <= 4
      fish.push('small salmon','small salmon', 'small salmon')
    end
  end

end
