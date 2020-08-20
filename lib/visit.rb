class Visit
  attr_accessor :visitor_address

  def initialize(page, visitor_address)
    @page = page
    @visitor_address = visitor_address
  end
end