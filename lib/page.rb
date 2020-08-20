# a class to represent a web page
class Page
  attr_accessor :name, :visits
  
  def initialize(name)
    @name = name
    @visits = []
  end
end