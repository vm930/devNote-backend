class UsersController < ApplicationController
    def index 
        @users = User.all
        render json: @users
    end 

    def create
        @user = User.new(user_params)
        if @user && @user.valid?
            @user.save
            token = encode_token({ user_id: @user.id })
            render json: { user: @user, jwt: token }
        else
            # render errors
            render json: { errors: @user.errors.full_messages }
        end
    end 

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end 

    def update
        @user = User.find_by(id:params[:id])
        @user.update(user_params)
        @user.save
        render json: @user
    end 

    def destroy
        @user = User.find_by(id:params[:id])
        @user.destroy
    end 

    def login 
        @user =  User.find_by(user_params)
      
        render json: @user
    end 

    private
    def user_params
        params.permit(:user_name,:full_name,:bio,:email,:avatar_url,:password,:password_confirmation)
    end 
end
