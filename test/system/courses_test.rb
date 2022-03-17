require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit courses_url
  #
  #   assert_selector "h1", text: "Course"
  # end
  test "visiting the index" do
    visit root_url "/"
    assert_selector "h1", text: "Welcome to Schoolio"
  end
end
