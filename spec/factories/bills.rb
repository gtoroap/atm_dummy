FactoryBot.define do
  factory :bill do
    serial { Faker::Lorem.word }
    value { Bill::DENOMINATIONS.sample }
    currency { 'COP' }
  end
end
