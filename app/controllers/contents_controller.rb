class ContentsController < ApplicationController
  def index
    @contents = Content.all.where(course_id: params[:course_id])
  end

  def new
    @content = Content.new
    @publisher = Publisher.find(params[:publisher_id])
    @course = Course.find(params[:course_id])
  end

  def create
    @content = Content.new(content_params)
    @content.course_id = Course.find(params[:course_id]).id
     if @content.save
      redirect_to publisher_course_contents_path(params[:course_id], params[:publisher_id])
    else
      render :new
    end
  end

  private

  def content_params
    params.require(:content).permit(:name, :description, :video, :video_link)
  end
end
