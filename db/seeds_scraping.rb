require "open-uri"
require "nokogiri"

# # Creating an array of courses 5th class
# url = "https://www.khanacademy.org/math/cc-fifth-grade-math"
# html = URI.open(url)
# doc = Nokogiri::HTML(html)

# elements = doc.search("._dwmetq ._k50sd54")

# courses = []
# elements.each do |element|
#   courses << element.text.strip
# end
# puts courses
# puts courses.count

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
  puts doc_subtopic

  # Retrieving "topic" in the table "courses"
    course_topic_links = doc_subtopic.search("._1eqoe4n8")

    course_topics = []
    course_topic_links.each do |course_topic|
      course_topics << course_topic.text.strip
    end

  # Retrieving "performance_level" in the table "courses"
    # performance_level_links = doc_subtopic.search("._duavrzj ._1ys4rws4")

    # performance_levels = []
    # performance_level_links.each do |performance_level|
    #   performance_levels << performance_level.text.strip
    # end

  #Retrieving "description" in the table "subtopics"
    course_subtopic_links = doc_subtopic.search("._lqicet ._dwmetq")

    subtopic_description = []
    course_subtopic_links.each do |course_topic|
      subtopic_description << course_topic.text.strip
    end
end
