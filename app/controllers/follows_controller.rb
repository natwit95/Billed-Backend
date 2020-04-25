class FollowsController < ApplicationController
    def index
        follows = Follow.all
        render json: follows
    end

    def show
        follow = Follow.find(params[:id])
        render json: follow
    end

    def create
        follow = Follow.create(user_params)
        render json: follow
    end
    
    private

    def user_params
        params.require(:follow).permit(:follower_id, :followed_user_id)
    end
end
