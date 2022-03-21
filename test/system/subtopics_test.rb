require "application_system_test_case"

class SubtopicsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit subtopics_url
  #
  #   assert_selector "h1", text: "Subtopic"
  # end
  test "lets a signed in user create a new subtopic" do
    login_as users(:niklas)

    visit "/courses/1/subtopics/new"
    fill_in "Description", with: "Algebraic Topography"
    # save_and_open_screenshot
    click_on 'Add subtopic'
    # save_and_open_screenshot

    # Should be redirected to course show page with new product
    assert_equal course_path(1), page.current_path
  end
end
