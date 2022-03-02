class Scraper
  def initialize(url)
    @url = url
  end

  def scrape
    html = URI.open(@url)
    doc = Nokogiri::HTML(html)

    subctopic_links = doc.search("._1jkfus0z ._dwmetq")

    hrefs = []
    subctopic_links.each do |link|
      hrefs << link["href"]
    end

    trial = {}
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
        trial[course_topics.first] = subtopic_description
    end
    return trial
  end
end
