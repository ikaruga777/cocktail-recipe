FactoryBot.define do
  factory :lunch do
    user_id create(:user)
    place { "叙々苑" }
    scheduled_for { Date.today }
    state 0
  end
end
