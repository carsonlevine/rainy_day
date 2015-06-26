class Choice
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

class SubGenreTV
  attr_accessor :tvsubgenre
  def initialize(tvsubgenre)
    @tvsubgenre = tvsubgenre
  end
end