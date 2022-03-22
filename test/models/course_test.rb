require "test_helper"

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "course fields return correct course fields" do
    course = Course.new(school_year: 8, subject: "Math", topic: 'Algebra', performance_level: 9, user_id: 2)
    assert_equal 8, course.school_year
    assert_equal "Math", course.subject
    assert_equal "Algebra", course.topic
    assert_equal 9, course.performance_level
    assert_equal "Niklas Franzke", User.find(course.user_id).name
  end
end
