FactoryBot.define do
  factory :occurrence do
    type_name { ["Pistola", "Drogas", "Flagrante"].sample }
    value { [8, 10, 16].sample }
  end
end
