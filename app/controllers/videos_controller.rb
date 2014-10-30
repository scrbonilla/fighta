class VideosController < ApplicationController
   params.require(:video).permit(:link)

    def new

        @video = Video.new
    end

    def create
        @video = Video.new(params[:video])
        if @video.save
            flash[:success] = 'Video added!'
            redirect_to root_url
        else
            render 'new'
        end
    end
end
