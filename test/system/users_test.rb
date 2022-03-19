require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit users_url
  #
  #   assert_selector "h1", text: "User"
  # end

  test "log in as a user" do
    visit "/users/sign_in"

    fill_in "Email", with: "gaston@gmail.com"
    fill_in "Password", with: "123456"
    click_on 'Log in'

    assert_equal root_path, page.current_path
  end
end
