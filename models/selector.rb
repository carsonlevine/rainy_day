
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


class SubGenre
  attr_accessor :tvsubgenre
  def initialize(tvsubgenre)
    @tvsubgenre = tvsubgenre
  end

end

class GenreMV
  attr_accessor :mvgenre
  def initialize(mvgenre)
    @mvgenre = mvgenre
  end
end


