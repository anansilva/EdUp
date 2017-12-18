class ContentsController < ApplicationController
  def index
    @course = Course.find(params[:course_id])
    @contents = Content.all
  end

  def new
    @publisher = current_publisher
    @course = Course.find(params[:course_id])
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    @content.save
    @course_content = CourseContent.new
    @course_content.course_id = Course.find(params[:course_id]).id
    @course_content.content_id = @content.id
     if @course_content.save
      redirect_to publisher_course_contents_path(params[:course_id], params[:publisher_id])
    else
      render :new
    end
  end

  def invite_student_new
    @student = Student.new
    @publisher = Publisher.find(params[:publisher_id])
    @course = Course.find(params[:course_id])
  end

  def invite_student_create
    @student = Student.new(invite_params)
    if Student.find_by(email: invite_params[:email]) == nil
      @student = Student.invite!({email: invite_params[:email]}, current_publisher) do |p|
        p.skip_invitation = true
        p.accept_invitation!
      end
    else
      @student = Student.find_by(email: invite_params[:email])
    end

    @course_student = CourseStudent.new
    @course_student.course_id = Course.find(params[:course_id]).id
    @course_student.student_id = @student.id
    @course_student.save

    redirect_to publisher_course_contents_path
    flash[:notice] = "User invited!"
  end

  private

  def invite_params
    params.require(:student).permit(:email)
  end

  def content_params
    params.require(:content).permit(:name, :description, :video, :video_link)
  end
end
