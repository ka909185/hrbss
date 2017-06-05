class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @base = @comment.base
    respond_to do |format|
      if @comment.save
        format.html{ redirect_to basis_path(@base), notice: 'コメントを投稿しました。' }
        format.js { render :index }
      else
        format.html{ render :new }
      end
    end
  end

  def destroy
    respond_to do |format|
      @comment = Comment.find (params[:id])
      @comment.destroy
      @base = @comment.base
      format.html { redirect_to basis_path(@base), notice: 'コメントを削除しました。' }
      format.js { render :index }
    end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:base_id, :content)
    end
end
