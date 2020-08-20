FactoryBot.define do
  factory :visit do
    page
    visitor_address '192.168.0.1'

    initialize_with { new(page, visitor_address) }
  end
end