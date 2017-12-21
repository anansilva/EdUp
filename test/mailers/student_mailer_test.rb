require 'test_helper'

class StudentMailerTest < ActionMailer::TestCase
  test "course_invitation" do
    mail = StudentMailer.course_invitation
    assert_equal "Course invitation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
