class SessionsController < ApplicationController
    skip_before_action :require_signin, only: [:new, :create]

    def new
    end
    def create
        user = User.find_by_email(params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            sign_in user
            redirect_back_or videos_path
        else
            flash.now[:danger] = "Email or password is invalid"
            render 'new'
        end
    end

    def destroy
        sign_out
        flash[:notice] = "Logged out"
        redirect_to root_url
    end
end
