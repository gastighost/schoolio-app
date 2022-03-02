require "open-uri"
require "nokogiri"

Course.destroy_all
puts "Destroying all courses"
Subtopic.destroy_all
puts "Destroying all courses"
User.destroy_all
puts "Destroying all users"

# Creating 5th grade math courses

niklas = User.create!(email: "niklas@gmail.com", password: 123456, name: "Niklas", description: "Loves Maths", age: 27, school_year: 12, years_of_study: 12,
                      learning_type: "visual", interest: "CrossFit", user_type: "teacher")
performance_level = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample

fifth_grade = Scraper.new("https://www.khanacademy.org/math/cc-fifth-grade-math")
fifth_grade.scrape.each do |topic, descriptions|
  new_course = Course.create!(school_year: 5, subject: "Maths", topic: topic, performance_level: performance_level,
                              user: niklas)
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end

sixth_grade = Scraper.new("https://www.khanacademy.org/math/cc-sixth-grade-math")
sixth_grade.scrape.each do |topic, descriptions|
  new_course = Course.create!(school_year: 6, subject: "Maths", topic: topic, performance_level: performance_level,
                              user: niklas)
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end

seventh_grade = Scraper.new("https://www.khanacademy.org/math/cc-seventh-grade-math")
seventh_grade.scrape.each do |topic, descriptions|
  new_course = Course.create!(school_year: 7, subject: "Maths", topic: topic, performance_level: performance_level,
                              user: niklas)
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end

eighth_grade = Scraper.new("https://www.khanacademy.org/math/cc-eighth-grade-math")
eighth_grade.scrape.each do |topic, descriptions|
  new_course = Course.create!(school_year: 7, subject: "Maths", topic: topic, performance_level: performance_level,
                              user: niklas)
  puts new_course
  descriptions.each do |description|
    Subtopic.create!(description: description, course: new_course)
    puts description
  end
end
