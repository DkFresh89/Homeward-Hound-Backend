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
        user = User.find_by(name: params[:name], password_digest: params[:password_digest])
        render json: {user: user}
    end 

    def signup
        # user_params = params.permit(:username, :password_digest, :rank, :high_score)
        # new_user = {username: user_params["username"], password_digest: user_params["password_digest"], rank: User.all.length+1, high_score: 0}
        # user = User.create(new_user)
        byebug 
    end 

end
