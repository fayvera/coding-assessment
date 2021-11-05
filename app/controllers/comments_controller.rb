class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render 'show'
        else
            flash[:message] = "Try again"
            redirect_to 'new'
        end
    end

    def update
        @comment = Comment.find_by_id(id: comment_params[:id])

    end

    def delete
        @comment = Commment.find_by_id(id: params[:id])
        if !!@comment
            @comment.destroy
        else
            flash[:message] = "Something went wrong, please try again!"
            redirect_to event_path(@comment.event_id)
        end
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
