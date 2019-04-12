class SubmissionsController < ApplicationController
def index
  @submissions = Submission.where(:user_id => session[:user_id])
end 
def new
 @user = User.find_by_id(session[:user_id])
end 
  def create
      @user = User.find_by_id(session[:user_id])
      @submission = @user.submissions.create(submission_params)
      redirect_to user_submissions_path
  end 
  
  private
  def submission_params
    params.require(:submission).permit(:category, :description)
  end 
end
