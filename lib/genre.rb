class Genre 
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
end