# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning existing publishers...'
Publisher.destroy_all

puts 'Creating publishers...'
  Publisher.create!(
    name: 'LeWagon',
    email: 'courses@lewagon.com',
    password: 'secret'
  )


puts 'Cleaning existing courses...'

Course.destroy_all

puts 'Creating courses...'
  Course.create!(
    name: 'Front-End for Beginners',
    description: 'Learn the basics of front-end in 4 hours',
    publisher_id: 1
  )
  Course.create!(
    name: 'Javascript for Beginners',
    description: 'Learn the basics of JavaScript in 1.5 hours',
    publisher_id: 1
  )
  Course.create!(
    name: 'Building a bot',
    description: 'Build your first bot for Messenger in 1.5 hours',
    publisher_id: 1
  )

puts 'Creating content...'

  Content.create!(
    name: 'Build your website with HTML & CSS',
    description: 'Watch this workshop and explore the world of web development, where Boris Paillard, CEO at Le Wagon, will teach you to code and design your own landing page using HTML and CSS.',
    video_link: 'https://www.youtube.com/watch?v=-9ZheXYOMeM&t=335s'
  )

  Content.create!(
    name: 'Building layouts with flexbox and CSS grids',
    description: 'You have a basic knowledge of HTML and CSS but you want to go further and build rich pages like on Airbnb, Slack or Medium. This workshop is just what you need! Let\'s code 4 professional layouts in only 1h30 using the latest CSS techniques like flexbox and CSS grid.',
    video_link: 'https://www.youtube.com/watch?v=dA00K9qmiWM&t=1s'
  )

  Content.create!(
    name: 'Javascript for Beginners',
    description: 'Let\'s go through JavaScript core notions together. This programming language is very popular. It\'s been used by all web browsers for more than 15 years and every web-developer must code some JS during their career. In addition to that, lots of cool JS frameworks were built recently, like React.js from Facebook.',
    video_link: 'https://www.youtube.com/watch?v=BEJ3d6IgmVk&t=359s'
  )

   Content.create!(
    name: 'Build your first bot for Messenger',
    description: 'With NodeJS and Twitter\'s API',
    video_link: 'https://www.youtube.com/watch?v=hmfh27oyBCM'
  )


  CourseContent.create!(
    course_id: 1,
    content_id: 1
  )

  CourseContent.create!(
    course_id: 1,
    content_id: 2
  )

  CourseContent.create!(
    course_id: 2,
    content_id: 3
  )

  CourseContent.create!(
    course_id: 3,
    content_id: 4
  )

puts 'Creating students...'

  5.times do
    Student.create!(
      email: Faker::Internet.email,
      password: 'secret'
    )
  end

  CourseStudent.create!(
    course_id: 1,
    student_id: 1
  )

  CourseStudent.create!(
    course_id: 1,
    student_id: 2
  )

  CourseStudent.create!(
    course_id: 2,
    student_id: 3
  )

  CourseStudent.create!(
    course_id: 3,
    student_id: 4
  )

  CourseStudent.create!(
    course_id: 3,
    student_id: 5
  )


puts 'Finished!'
