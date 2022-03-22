require "test_helper"

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "lesson fields return correct lesson fields" do
    lesson = Lesson.new(date: Date.new(2022, 3, 25), time: DateTime.new(2022, 3, 25, 2, 2, 2),
                        duration: 90, max_capacity: 5, subtopic_id: 1)
    assert_equal Date.new(2022, 3, 25), lesson.date
    assert_equal DateTime.new(2022, 3, 25, 2, 2, 2), lesson.time
    assert_equal 90, lesson.duration
    assert_equal 5, lesson.max_capacity
    assert_equal "Algebraic Topography", Subtopic.find(lesson.subtopic_id).description
  end
end
