# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "nokogiri"

Course.destroy_all
puts "Destroying all courses"
User.destroy_all
puts "Destroying all users"

# Creating an array of with URL of subtopics of 5th class
url = "https://www.khanacademy.org/math/cc-fifth-grade-math"
html = URI.open(url)
doc = Nokogiri::HTML(html)

subctopic_links = doc.search("._1jkfus0z ._dwmetq")

hrefs = []
subctopic_links.each do |link|
  hrefs << link["href"]
end
# puts hrefs
# puts hrefs.count

#Going into the URL of subtopic and retrieving all data for courses and subtopics 5th class
hrefs.each do |href|
  url_subtopic = "https://www.khanacademy.org#{href}"
  html_subtopic = URI.open(url_subtopic)
  doc_subtopic = Nokogiri::HTML(html_subtopic)

  # Retrieving "topic" in the table "courses"
    course_topic_links = doc_subtopic.search("._1eqoe4n8")

    course_topics = []
    course_topic_links.each do |course_topic|
      course_topics << course_topic.text.strip
    end

  #Retrieving "description" in the table "subtopics"
    course_subtopic_links = doc_subtopic.search("._lqicet ._dwmetq")

    subtopic_description = []
    course_subtopic_links.each do |course_topic|
      subtopic_description << course_topic.text.strip
    end
end

# Creating 5th grade math courses

niklas = User.create!(name: "Niklas", description: "Loves Maths", age: 27, school_year: 12, years_of_study: 12,
                      learning_type: "visual", interest: "CrossFit", user_type: "teacher")
Course.create!(school_year: 5, subject: "Maths", topic: "placeholder", performance_level: "placeholder",
               user: niklas)
