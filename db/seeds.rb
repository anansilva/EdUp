# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


puts 'Creating publishers...'
5.times do
  Publisher.create!(
    email: Faker::Internet.email,
    password: 'secret'
  )
end

puts 'Cleaning existing courses...'

Course.destroy_all

puts 'Creating courses...'
5.times do
  Course.create!(
    name: Faker::Lorem.word,
    description: Faker::Lorem.sentence(3),
    publisher_id: rand(1..10),
  )
end


puts 'Finished!'
