class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        if params[:user][:password] == params[:user][:password_confirmation]
            @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash[:error] = 'Your password and password confirmation do not match!!'
            redirect_to '/users/new'

        end

    end

    def show
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
