# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning existing courses...'

Course.destroy_all

puts 'Creating courses...'
5.times do
  Course.create!(
    name: Faker::Lorem.word,
    description: Faker::Lorem.sentence(3)
  )
end
puts 'Finished!'
