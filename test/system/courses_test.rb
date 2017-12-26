require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  test "visiting the index as a publisher" do
    login_as publishers(:school)
    visit publisher_courses_path(publishers(:school))
    assert_selector "h1", text: "Your Courses"
    assert_selector ".course-body", count: Course.count
  end

  test "lets a signed in publisher create a new product" do
    login_as publishers(:school)
    visit new_publisher_course_path(publishers(:school))
    fill_in "course_name", with: "Le Wagon"
    fill_in "course_description", with: "Change your life: Learn to code"
    click_on 'Create Course'
    # Should be redirected to Home with new product
    assert_equal publisher_courses_path(publishers(:school)), page.current_path
    assert_text "Le Wagon"
  end
end
