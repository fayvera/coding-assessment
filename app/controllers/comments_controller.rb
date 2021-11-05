class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.create(params: [comment_params])
        
    end

    def update
        @comment = Comment.find_by_id(id: comment_params)
    end
    private

    def comment_params
        params.require(:comment).permit(
            :id, 
            :user_id,
            :event_id
            :content
        )
    end
end
