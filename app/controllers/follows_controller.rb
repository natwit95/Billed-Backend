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
        follow = Follow.create(follow_params)
        render json: follow
        
    end

      def destroy 
        follow = Follow.find(params[:id])
        follow.destroy 
        follow = Follow.all 
        render json: {status: 'deleted'} 
    end
    private

    def follow_params
        params.require(:follow).permit(:follower_id, :followed_user_id)
    end
end
