FactoryBot.define do
  factory :policeman do
    position { ["Soldado", "Cabo", "Capitão"].sample }
    name { FFaker::Name.last_name }
  end
end
