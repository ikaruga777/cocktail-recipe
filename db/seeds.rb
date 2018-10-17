# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'amy', admin: true)
attendee = User.create!(name: 'tom')
attendee2 = User.create!(name: 'george')
lunch = user.lunches.create(scheduled_for: Date.new(2018, 8, 1),
                            place: 'Asian Parm',
                            state: :scheduled)
lunch.attend(attendee)
lunch.attend(attendee2)

user = User.create(name: 'basil', admin: true)
attendee = User.create!(name: 'baiken')
attendee2 = User.create!(name: 'may')
lunch = user.lunches.create(scheduled_for: Date.new(2018, 8, 2),
                            place: '和泉鮨🍣',
                            state: :done)
lunch.attend(attendee)
lunch.attend(attendee2)
lunch.create_topic(description: 'スペインの話、住んでいるところの話とか')
