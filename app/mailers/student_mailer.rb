class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.course_invitation.subject
  #
  def course_invitation(student, course)
    @student = student
    @course = course


    mail(to: @student.email, subject: "You've been invited to a new course")
  end
end
