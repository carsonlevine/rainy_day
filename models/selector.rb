class Service
  attr_accessor :category
  def initialize(category)
    @category = category
  end
end

class Genre
  attr_accessor :tvgenre
  def initialize(tvgenre)
    @tvgenre = tvgenre
  end
end

class SubGenre
  attr_accessor :tvsubgenre
  def initialize(tvsubgenre)
    @tvsubgenre = tvsubgenre
  end
end