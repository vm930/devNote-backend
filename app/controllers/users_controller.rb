class UsersController < ApplicationController
     def index 
        @users = User.all
        render json: @users
    end 

    def create
        @user = User.find_or_create_by(user_params)
        render json: @user
    end 

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end 

    def update
        @user = User.find_by(id:params[:id])
        @user.update(user_params)
        @user.save
        render: json: @user
    end 

    def destroy
        @user = User.find_by(id:params[:id])
        @note.destroy
    end 

    private
    def user_params
        params.require(:user).permit(:user_name,:full_name,:bio,:email,:avatar_url)
    end 
end
