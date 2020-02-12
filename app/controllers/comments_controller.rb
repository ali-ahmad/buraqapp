class CommentsController < ApplicationController
    def new
      @comment = Comment.new
    end

    def create
      @commentable.comments.new(comment_params) 
      @commentable.save
      if @comment.save
        redirect_to :back, notice: 'Your comment was successfully posted!'
      else
        redirect_to :back, notice: "Your comment wasn't posted!"
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_commentable
      if params[:comment_id]
        @commentable = Comment.find_by_id(params[:comment_id]) 
      elsif params[:naat_id]
        @commentable = Naat.find_by_id(params[:naat_id])
      end
    end

end