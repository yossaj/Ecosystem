class Bear

  attr_reader :name, :type
  attr_accessor :belly

  def initialize(name, type, belly)
    @name = name
    @type = type
    @belly = belly
  end

  def eat_fish_from_river(river)
    caught_fish = river.fish.pop
    belly.push(caught_fish)
  end

end
