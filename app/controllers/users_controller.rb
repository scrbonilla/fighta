class UsersController < ApplicationController
    skip_before_action :require_signin, only: [:new, :create]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            sign_in @user
            redirect_to root_path, notice:  "Thank you for signing up!"
        else
            render "new"
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def require_current_user
        if !current_user?(@user)
            redirect_to root_path
        end
    end
end
