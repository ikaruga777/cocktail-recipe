FactoryBot.define do
  factory :lunch do
    user { create(:user) }
    place { "叙々苑" }
    scheduled_for { Date.today }
    state { :scheduled }
  end
end
