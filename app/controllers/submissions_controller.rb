class SubmissionsController < ApplicationController
  def new 
      
  end 
  def create
      render plain: params[:submission].inspect
  end 
end
