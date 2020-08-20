# a class to represent a web page
class Page
  attr_accessor :name, :visits
  
  def initialize(name)
    @name = name
    @visits = []
  end

  def unique_visits
    visitors = []
    @visits.each do |visit|
      if !visitors.include?(visit.visitor_address)
        visitors << visit.visitor_address
      end
    end
    visitors.size
  end
end