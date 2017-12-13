require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    # save_and_open_screenshot
    assert_selector "h1", text: "Courses"
    assert_selector ".course-body", count: Course.count
  end

  test "lets a signed in publisher create a new product" do
    login_as publishers(:school)
    visit "/courses/new"
    fill_in "course_name", with: "Le Wagon"
    fill_in "course_description", with: "Change your life: Learn to code"
    click_on 'Create Course'
    # Should be redirected to Home with new product
    assert_equal root_path, page.current_path
    assert_text "Change your life: Learn to code"
  end
end
