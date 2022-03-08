require "open-uri"
require "nokogiri"

Subtopic.destroy_all
puts "Destroying all courses"
Course.destroy_all
puts "Destroying all courses"
User.destroy_all
puts "Destroying all users"
# General preparation
performance_level = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#Teacher Photos
teacher_photo_one = URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')

# Creating teachers
teacher_one = User.new(email: "teacher_one@gmail.com", password: 123456, name: "Niklas", description: "Loves Maths", age: 27, school_year: 12, years_of_study: 12,
                  learning_type: "visual", interest: "CrossFit", user_type: "teacher")
teacher_one.photo.attach(io: teacher_photo_one, filename: 'nes.png', content_type: 'image/png')
teacher_one.save

# Creating 5th grade math courses
fifth_grade = Scraper.new("https://www.khanacademy.org/math/cc-fifth-grade-math")
fifth_grade.scrape.each do |topic, descriptions|
  new_course = Course.new(school_year: 5, subject: "Maths", topic: topic, performance_level: performance_level.sample,
                              user: teacher_one)
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
                              user: teacher_one)
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
                              user: teacher_one)
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
                              user: teacher_one)
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
