FactoryGirl.define do
  factory :room do
    home_type         "House"
    room_type         "Shared"
    accommodate       2
    bedroom_count     2
    bathroom_count    3
    listing_name      { Faker::Lorem.sentence(5, false, 0) }
    description       { Faker::Lorem.sentence(5, false, 0) }
    address           { Faker::Address.city }
    has_tv            true
    has_kitchen       true
    has_airco         true
    has_heating       true
    has_internet      true
    price             { Faker::Commerce.price }
    association       :user, factory: :user

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end