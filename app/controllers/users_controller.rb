class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: @users
    end 

    def show
        @user = User.find(params[:id])
        render json: @user 
    end 

    def login
        user = User.find_by(username: params[:username], password_digest: params[:password])
    end 

end
