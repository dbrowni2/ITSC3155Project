class UsersController < ApplicationController
    def index
    @user = User.find(params[session[:user_id]])
    
end 
end
