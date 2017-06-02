class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @base = @comment.base
    respond_to do |format|
      if @comment.save
        format.html{ redirect_to base_path(@base) }
      else
        format.html{ render :new }
      end
    end
  end
  private
    def comment_params
      params.require(:comment).permit(base_id)
    end
end
