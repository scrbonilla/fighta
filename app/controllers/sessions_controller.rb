class SessionsController < ApplicationController
    skip_before_action :require_signin, only: [:new, :create]

    def new
    end
    def create
        user = User.find_by_email(params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            sign_in user
            flash[:notice] = "Logged in!"
            redirect_back_or videos_path
        else
            flash.now[:error] = "Email or password is invalid"
            redirect_to login_path
        end
    end

    def destroy
        sign_out
        redirect_to login_path, notice: 'Logged out'
    end
end
