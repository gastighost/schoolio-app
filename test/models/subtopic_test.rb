require "test_helper"

class SubtopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "subtopic fields return correct subtopic fields" do
    subtopic = Subtopic.new(description: "Volume and area", course_id: 2)
    assert_equal "Volume and area", subtopic.description
    assert_equal "Units of Measure", Course.find(subtopic.course_id).topic
  end
end
