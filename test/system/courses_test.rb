require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit courses_url
  #
  #   assert_selector "h1", text: "Course"
  # end
  test "lets a signed in user create a new course" do
    login_as users(:niklas)
    visit "/courses/new"
    # save_and_open_screenshot

    fill_in "School year", with: 9
    fill_in "Subject", with: "Math"
    fill_in "Topic", with: "Algebra"
    fill_in "Performance level", with: 10
    # save_and_open_screenshot

    click_on 'Add course'
    # save_and_open_screenshot

    # Should be redirected to course show page with new product
    assert_equal course_path(Course.last), page.current_path
  end
end
