class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: serialize_models(@users)
    end 

    def show 
        @user = User.find(params[:id])
        render json: serialize_model(@user)
    end 

end
