FactoryBot.define do
  factory :user do
    name { "ランチ太郎" }
    slack_identifier { "" }
    admin { false }
  end
end
