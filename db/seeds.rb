# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
invitee = User.create!(name: 'tom', admin: true)
user = User.create!(name: 'amy', admin: true)
invitee2 = User.create!(name: 'george', admin: true)
lunch = user.lunches.create!(scheduled_for: Date.new(2018, 8, 1),
                            place: 'Asian Parm',

                            state: :scheduled)
lunch.invite(invitee)
lunch.invite(invitee2)
lunch.create_topic(description: 'スペインの話、住んでいるところの話とか')
