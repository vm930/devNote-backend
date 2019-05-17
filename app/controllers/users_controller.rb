class UsersController < ApplicationController
     def index 
        @users = User.all
        render json: @users
    end 

    def create
        @user = Note.create(note_value: params[:content].to_s)
        render json: @user
    end 

    def show
        @user = Note.find_by(id: params[:id])
        render json: @user
    end 

    private
    def user_params
        params.require(:user).permit(:user_name,:full_name,:bio,:email,:avatar_url)
    end 
end
