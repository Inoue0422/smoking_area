FactoryBot.define do
  factory :spot do
    name             { Faker::Name.name }
    tobacco_id       { Faker::Number.between(from: 1, to: 3) }
    fence            { [true, false].sample }
    chair            { [true, false].sample }
    roof             { [true, false].sample }
    latitude         { Faker::Address.latitude }
    longitude        { Faker::Address.longitude }
  end
end
