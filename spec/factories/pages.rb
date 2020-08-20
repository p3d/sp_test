FactoryBot.define do
  factory :page do
    name {"/index"}

    initialize_with { new(name) }
  end
end