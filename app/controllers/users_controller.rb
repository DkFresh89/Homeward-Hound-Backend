class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: UserSerializer.new(@users).serializable_hash.to_json
        
    end 

    def show
        @user = User.find(params[:id])
        render json: UserSerializer.new(@user).serializable_hash.to_json
    end 

    def login
        # byebug
        user = User.find_by(name: params[:name], password_digest: params[:password_digest]).valid?
        # byebug
        if user.valid?
            byebug
            render json: UserSerializer.new(user).serializable_hash.to_json
        else 
            byebug
            render json: { status: 500, errors: user.errors }
        end 
    end 

    def signup
        user_params = params.permit(:name, :address, :phone_number, :good_sam, :password_digest)
        new_user = {name: user_params["name"], address: user_params["address"], phone_number: user_params["phone_number"], good_sam: user_params["good_sam"], password_digest: user_params["password_digest"]}
        user = User.create(new_user)
        # byebug 
        # json_string = UserSerializer.new(user).serializable_hash.to_json
        render json: user
        puts "Hit signup"
    end 

end
