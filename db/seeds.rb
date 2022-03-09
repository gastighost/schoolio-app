require "open-uri"
require "nokogiri"
require "faker"

Subtopic.destroy_all
puts "Destroying all subtopics"
Course.destroy_all
puts "Destroying all courses"
User.destroy_all
puts "Destroying all users"
# General preparation
performance_level = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
school_year = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
age = [19, 21, 23, 24, 35, 46, 27, 38, 29]

# Student Photos
student_photo_one = URI.open('https://images.unsplash.com/photo-1596495578065-6e0763fa1178?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80')
student_photo_two = URI.open('https://images.unsplash.com/photo-1517256673644-36ad11246d21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')

# Creating students
student_one = User.new(email: "student_one@gmail.com", password: 123456, name: "Annabelle", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "student")
student_one.photo.attach(io: student_photo_one, filename: 'nes.png', content_type: 'image/png')
student_one.save

student_two = User.new(email: "student_two@gmail.com", password: 123456, name: "Bettina", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "student")
student_two.photo.attach(io: student_photo_two, filename: 'nes.png', content_type: 'image/png')
student_two.save

# Teacher Photos
teacher_photo_one = URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
teacher_photo_two = URI.open('https://images.unsplash.com/photo-1614644147798-f8c0fc9da7f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80')
teacher_photo_three = URI.open('https://images.unsplash.com/photo-1548449112-96a38a643324?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80')
teacher_photo_four = URI.open('https://images.unsplash.com/photo-1544717305-2782549b5136?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80')
teacher_photo_five = URI.open('https://images.unsplash.com/photo-1573496799652-408c2ac9fe98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')
teacher_photo_six = URI.open('https://images.unsplash.com/photo-1607990283143-e81e7a2c9349?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=841&q=80')
teacher_photo_seven = URI.open('https://images.unsplash.com/flagged/photo-1559475555-b26777ed3ab4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
teacher_photo_eight = URI.open('https://images.unsplash.com/photo-1631203928493-a4e4eb2b8da1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')
teacher_photo_nine = URI.open('https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
teacher_photo_ten = URI.open('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')

# Creating teachers
teacher_one = User.new(email: "teacher_one@gmail.com", password: 123456, name: "Anthony", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
                  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_one.photo.attach(io: teacher_photo_one, filename: 'nes.png', content_type: 'image/png')
teacher_one.save

teacher_two = User.new(email: "teacher_two@gmail.com", password: 123456, name: "Basti", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_two.photo.attach(io: teacher_photo_two, filename: 'nes.png', content_type: 'image/png')
teacher_two.save

teacher_three = User.new(email: "teacher_three@gmail.com", password: 123456, name: "Charlotte", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_three.photo.attach(io: teacher_photo_three, filename: 'nes.png', content_type: 'image/png')
teacher_three.save

teacher_four = User.new(email: "teacher_four@gmail.com", password: 123456, name: "Daniel", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_four.photo.attach(io: teacher_photo_four, filename: 'nes.png', content_type: 'image/png')
teacher_four.save

teacher_five = User.new(email: "teacher_five@gmail.com", password: 123456, name: "Elli", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_five.photo.attach(io: teacher_photo_five, filename: 'nes.png', content_type: 'image/png')
teacher_five.save

teacher_six = User.new(email: "teacher_six@gmail.com", password: 123456, name: "Fiona", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_six.photo.attach(io: teacher_photo_six, filename: 'nes.png', content_type: 'image/png')
teacher_six.save

teacher_seven = User.new(email: "teacher_seven@gmail.com", password: 123456, name: "Gustavo", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_seven.photo.attach(io: teacher_photo_seven, filename: 'nes.png', content_type: 'image/png')
teacher_seven.save

teacher_eight = User.new(email: "teacher_eight@gmail.com", password: 123456, name: "Hilde", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_eight.photo.attach(io: teacher_photo_eight, filename: 'nes.png', content_type: 'image/png')
teacher_eight.save

teacher_nine = User.new(email: "teacher_nine@gmail.com", password: 123456, name: "Ines", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_nine.photo.attach(io: teacher_photo_nine, filename: 'nes.png', content_type: 'image/png')
teacher_nine.save

teacher_ten = User.new(email: "teacher_ten@gmail.com", password: 123456, name: "Julian", description: Faker::Movie.quote, age: age.sample, school_year: school_year.sample, years_of_study: school_year.sample,
  learning_type: "visual", interest: Faker::Games::Pokemon.move, user_type: "teacher")
teacher_ten.photo.attach(io: teacher_photo_ten, filename: 'nes.png', content_type: 'image/png')
teacher_ten.save

teacher_array=[teacher_one, teacher_two, teacher_three, teacher_four, teacher_five, teacher_six, teacher_seven, teacher_eight, teacher_nine, teacher_ten]

# Creating 5th grade math courses
fifth_grade = Scraper.new("https://www.khanacademy.org/math/cc-fifth-grade-math")
fifth_grade.scrape.each do |topic, descriptions|
  new_course = Course.new(school_year: 5, subject: "Maths", topic: topic, performance_level: performance_level.sample,
                          user: teacher_array.sample)
  maths_1 = URI.open("https://images.unsplash.com/photo-1632207190829-a97e41017175?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1190&q=80")
  maths_2 = URI.open("https://images.unsplash.com/photo-1518133910546-b6c2fb7d79e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80")
  maths_3 = URI.open("https://images.unsplash.com/photo-1595231861877-9519be503a52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80")
  math_photos = [maths_1, maths_2, maths_3]
  new_course.photo.attach(io: math_photos.sample, filename: 'maths.png', content_type: 'image/png')
  new_course.save
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end

# Creating 6th grade math courses
sixth_grade = Scraper.new("https://www.khanacademy.org/math/cc-sixth-grade-math")
sixth_grade.scrape.each do |topic, descriptions|
  new_course = Course.new(school_year: 6, subject: "Maths", topic: topic, performance_level: performance_level.sample,
                          user: teacher_array.sample)
  maths_1 = URI.open("https://images.unsplash.com/photo-1635070041078-e363dbe005cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80")
  maths_2 = URI.open("https://images.unsplash.com/photo-1636466497217-26a8cbeaf0aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80")
  maths_3 = URI.open("https://images.unsplash.com/photo-1590019012497-b44f1aaa40d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
  math_photos = [maths_1, maths_2, maths_3]
  new_course.photo.attach(io: math_photos.sample, filename: 'maths.png', content_type: 'image/png')
  new_course.save
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end

# Creating 7th grade math courses
seventh_grade = Scraper.new("https://www.khanacademy.org/math/cc-seventh-grade-math")
seventh_grade.scrape.each do |topic, descriptions|
  new_course = Course.new(school_year: 7, subject: "Maths", topic: topic, performance_level: performance_level.sample,
                          user: teacher_array.sample)
  maths_1 = URI.open("https://images.unsplash.com/photo-1556302132-40bb13638500?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1752&q=80")
  maths_2 = URI.open("https://images.unsplash.com/photo-1613905780946-26b73b6f6e11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1744&q=80")
  maths_3 = URI.open("https://images.unsplash.com/photo-1546833998-877b37c2e5c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
  math_photos = [maths_1, maths_2, maths_3]
  new_course.photo.attach(io: math_photos.sample, filename: 'maths.png', content_type: 'image/png')
  new_course.save
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end

# Creating 8th grade math courses
eighth_grade = Scraper.new("https://www.khanacademy.org/math/cc-eighth-grade-math")
eighth_grade.scrape.each do |topic, descriptions|
  new_course = Course.new(school_year: 7, subject: "Maths", topic: topic, performance_level: performance_level.sample,
                          user: teacher_array.sample)
  maths_1 = URI.open("https://images.unsplash.com/photo-1446329360995-b4642a139973?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1554&q=80")
  maths_2 = URI.open("https://images.unsplash.com/photo-1624275169218-8cdb7d966a26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
  maths_3 = URI.open("https://images.unsplash.com/photo-1520236351980-16fbcb68e0e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1896&q=80")
  math_photos = [maths_1, maths_2, maths_3]
  new_course.photo.attach(io: math_photos.sample, filename: 'maths.png', content_type: 'image/png')
  new_course.save
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end
