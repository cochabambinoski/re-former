class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        puts @user
        if @user.save
          redirect_to new_user_path
        else
          puts @user.errors.messages
          render :new
        end
      end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end 
end
