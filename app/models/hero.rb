class Hero
  attr_accessor :name, :power, :bio
  
  @@all = []
  
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end
  
  def self.all
    @@all
  end
end