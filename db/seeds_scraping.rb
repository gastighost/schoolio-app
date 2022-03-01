require "open-uri"
require "nokogiri"

# Creating an array of courses 5th class
url = "https://www.khanacademy.org/math/cc-fifth-grade-math"
html = URI.open(url)
doc = Nokogiri::HTML(html)

elements = doc.search("._dwmetq ._k50sd54")

courses = []
elements.each do |element|
  courses << element.text.strip
end
puts courses
puts courses.count

# Creating an array of subtopics 5th class
url = "https://www.khanacademy.org/math/cc-fifth-grade-math"
html = URI.open(url)
doc = Nokogiri::HTML(html)

links = doc.search("._12yy6f6l ._dwmetq")
puts links

hrefs = []
links.each do |link|
  hrefs << link["href"]
end
puts hrefs
puts hrefs.count

#code completey wrong; just logic --> DO NOT REASSIGN!!!
hrefs.each do |href|
  url_2 = "https://www.khanacademy.org#{href}"
  html_2 = URI.open(url_2)
  doc_2 = Nokogiri::HTML(html_2)
end


# # Creating an array of courses
# url = "https://www.khanacademy.org/math"
# html = URI.open(url)
# doc = Nokogiri::HTML(html)

# elements = doc.search("._158q6at ._dwmetq")

# courses = []
# elements.each do |element|
#   courses << element.text.strip
# end
# puts courses
# puts courses.count

# #Getting the image of the beasts
# def scraping_img(beasts)
#   begin
#     beast = beasts.sample.tr_s(" ", "_")
#     url = "https://harrypotter.fandom.com/wiki/#{beast}"

#     html = URI.open(url)
#     doc = Nokogiri::HTML(html)

#     element = doc.search("aside figure a")
#     href =  element.attribute("href").value
#     puts href
#   rescue => exception
#     href = "https://s7g8.scene7.com/is/image/BradfordUK/0302984001_alt1?wid=700&hei=700&fmt=pjpeg&qlt=85,0"
#     puts href
#   end
# end
